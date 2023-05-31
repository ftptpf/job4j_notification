package ru.job4j.notification.service;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;
import ru.job4j.notification.model.Order;
import ru.job4j.notification.repository.NotificationRepository;

@Service
@AllArgsConstructor
@Slf4j
public class NotificationService {

    private NotificationRepository repository;

    @KafkaListener(topics = "messengers")
    public void saveOrder(Order order) {
        repository.save(order);
    }
}
