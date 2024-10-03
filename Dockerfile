# Kafka va Zookeeper uchun rasm (image) bazasi
FROM confluentinc/cp-kafka:latest

# Kafka uchun kerakli portlar
EXPOSE 9092

# Konteyner ishga tushganda Kafka serverini ishga tushirish
CMD ["bash", "-c", "while [ ! -f /tmp/broker-list ]; do sleep 1; done; /etc/confluent/docker/run"]
