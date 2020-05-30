package org.example.twods.serviceCommonDB;

import org.example.twods.entities.dto.CommonObjDTOResSum;
import org.example.twods.repositories.commonRepo.CommonRepoResSum;

public class CommonDBServiceImpl implements CommonDBService{

    private final CommonRepoResSum commonRepoResSum;
    public CommonDBServiceImpl( CommonRepoResSum commonRepoResSum) {

        this.commonRepoResSum = commonRepoResSum;
    }



    @Override
    public void save(CommonObjDTOResSum commonObjDTOResSum) {
        commonRepoResSum.save(commonObjDTOResSum);
    }
}
