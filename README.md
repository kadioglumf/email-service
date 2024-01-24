- Create Redis Container

```cli
docker build -t redis-test doc/redis
docker run -d --name redis-container-test -p 6379:6379 redis-test
```

- Connect to the Redis
```text 
host: localhost
port: 6379
database alias: CUSTOM_NAME
password: Test123
```


- Run startup.sql file



