package org.example.twods.repositories.edmcRepo;

import org.example.twods.entities.edmc.Platforms;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlatformsRepo extends JpaRepository<Platforms, Long> {
}
