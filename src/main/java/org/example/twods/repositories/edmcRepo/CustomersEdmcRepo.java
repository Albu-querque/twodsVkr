package org.example.twods.repositories.edmcRepo;

import org.example.twods.entities.edmc.CustomersEdmc;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomersEdmcRepo extends JpaRepository<CustomersEdmc, Long> {
}
