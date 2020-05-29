package org.example.twods.repositories.cloudComputingRepo;

import org.example.twods.entities.cloudComputing.Portal;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PortalsRepo extends JpaRepository<Portal, Long> {
}
