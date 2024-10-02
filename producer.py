from kafka import KafkaProducer

producer = KafkaProducer(bootstrap_servers='localhost:9092')


def send_message(msg):
    producer.send('my-topic', msg.encode())


if __name__ == '__main__':
    send_message('Hello, Kafka!')
    send_message('Hello again, Kafka!')
    send_message('Hello, Kafka!')