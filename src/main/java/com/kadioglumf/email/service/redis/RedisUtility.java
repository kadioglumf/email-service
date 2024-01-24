package com.kadioglumf.email.service.redis;

import com.kadioglumf.email.exception.EmailServiceException;
import com.kadioglumf.email.payload.response.error.ErrorType;
import com.kadioglumf.email.util.ConvertUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.*;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional
public class RedisUtility {


    private final RedisTemplate<String, String> redisTemplate;

    public void setValue(final String key, Object value) {
        String jsonValue = ConvertUtils.convertObjectToJsonData(value);
        if (StringUtils.isNotBlank(jsonValue)) {
            redisTemplate.opsForValue().set(key, jsonValue);
        }
    }

    public <T> T getValue(final String key, Class<T> clazz) {
        String value = redisTemplate.opsForValue().get(key);
        if (StringUtils.isBlank(value)) {
            return null;
        }
        return ConvertUtils.convertJsonDataToObject(value, clazz);
    }

    public void setValues(final Map<String, Object> value) {
        HashMap<String, String> data = new HashMap<>();
        for (String key : value.keySet()) {
            String jsonValue = ConvertUtils.convertObjectToJsonData(value.get(key));
            if (StringUtils.isNotBlank(jsonValue)) {
                data.put(key, jsonValue);
            }
        }

        redisTemplate.opsForValue().multiSet(data);
    }

    public <T> List<T> getValues(final List<String> keys, Class<T> clazz) {
        List<String> jsonValue = redisTemplate.opsForValue().multiGet(keys);
        if (CollectionUtils.isEmpty(jsonValue) || jsonValue.get(0) == null) {
            return null;
        }
        List<T> values = new ArrayList<>();
        for (String json : jsonValue) {
            if (json == null) {
                return null;
            }
            values.add(ConvertUtils.convertJsonDataToObject(json, clazz));
        }
        return values;
    }

    public void deleteKey(final String key) {
        redisTemplate.delete(key);
    }

    public void deleteKey(final List<String> keys) {
        try {
            if (!keys.isEmpty()) {
                redisTemplate.delete(keys);
            }
        }
        catch (Exception ex) {
            log.error("RedisUtility deleteKey method error: {}", ex);
        }
    }

    public Set<String> keys(String pattern) {
        return redisTemplate.keys(pattern);
    }

    public void flushAll() {
        if (redisTemplate.getConnectionFactory() == null) {
            throw new EmailServiceException(ErrorType.REDIS_CONNECTION_ERROR);
        }
        redisTemplate.getConnectionFactory().getConnection().flushAll();
    }
}
