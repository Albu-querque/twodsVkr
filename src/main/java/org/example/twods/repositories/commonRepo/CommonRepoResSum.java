package org.example.twods.repositories.commonRepo;

import org.example.twods.entities.dto.CommonObjDTOResSum;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommonRepoResSum extends JpaRepository<CommonObjDTOResSum, Long> {
}
