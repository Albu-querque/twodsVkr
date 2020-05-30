package org.example.twods.repositories.edmcRepo;

import org.example.twods.entities.edmc.OrdersEdmc;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderEdmcRepo extends JpaRepository<OrdersEdmc, Long> {
}
