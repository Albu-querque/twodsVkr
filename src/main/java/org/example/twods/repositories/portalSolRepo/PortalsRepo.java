package org.example.twods.repositories.portalSolRepo;

import org.example.twods.entities.portalSol.Portal;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PortalsRepo extends JpaRepository<Portal, Long> {
}
