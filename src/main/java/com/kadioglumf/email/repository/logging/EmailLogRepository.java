package com.kadioglumf.email.repository.logging;

import com.kadioglumf.email.model.EmailLogModel;

public interface EmailLogRepository {

    void save(EmailLogModel logModel);
}
