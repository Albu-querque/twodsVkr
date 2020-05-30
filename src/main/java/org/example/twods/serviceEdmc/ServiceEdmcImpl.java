package org.example.twods.serviceEdmc;

import org.example.twods.entities.edmc.CustomersEdmc;
import org.example.twods.entities.edmc.Licenses;
import org.example.twods.entities.edmc.OrdersEdmc;
import org.example.twods.entities.edmc.Platforms;
import org.example.twods.repositories.edmcRepo.CustomersEdmcRepo;
import org.example.twods.repositories.edmcRepo.OrderEdmcRepo;
import org.example.twods.repositories.edmcRepo.PlatformsRepo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ServiceEdmcImpl implements ServiceEdmc{
    private final CustomersEdmcRepo customersEdmcRepo;
    private final OrderEdmcRepo orderEdmcRepo;
    private final PlatformsRepo platformsRepo;

    public ServiceEdmcImpl(CustomersEdmcRepo customersEdmcRepo,
                           OrderEdmcRepo orderEdmcRepo,
                           PlatformsRepo platformsRepo) {
        this.customersEdmcRepo = customersEdmcRepo;
        this.orderEdmcRepo = orderEdmcRepo;
        this.platformsRepo = platformsRepo;
    }


    @Override
    public List<CustomersEdmc> findAllCustomers() {
        return customersEdmcRepo.findAll();
    }

    @Override
    public List<Licenses> findAllLicenses() {
        return platformsRepo.findAll()
                .stream()
                .map(Platforms::getLicenses)
                .collect(Collectors.toList());
    }

    @Override
    public String currentEdition() {

        return null;
    }

    @Override
    public List<OrdersEdmc> findAllOrders() {
        return orderEdmcRepo.findAll();
    }

    @Override
    public List<Platforms> findAllPlatforms() {
        return platformsRepo.findAll();
    }
}
