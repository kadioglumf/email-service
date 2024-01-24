FROM redis:latest

# Eğer gerekiyorsa, Redis yapılandırma dosyasını kopyala
COPY redis.conf /usr/local/etc/redis/redis.conf

# Redis sunucusunu çalıştır
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]