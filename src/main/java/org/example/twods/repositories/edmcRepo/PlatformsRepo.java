package org.example.twods.repositories.edmcRepo;

import org.example.twods.entities.edmc.Platforms;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface PlatformsRepo extends JpaRepository<Platforms, Long> {
}
