package org.example.twods.serviceEdmc;

import org.example.twods.entities.edmc.CustomersEdmc;
import org.example.twods.entities.edmc.Licenses;
import org.example.twods.entities.edmc.OrdersEdmc;
import org.example.twods.entities.edmc.Platforms;

import java.util.List;

public interface ServiceEdmc {
    List<CustomersEdmc> findAllCustomers();
    List<Licenses> findAllLicenses();
    List<OrdersEdmc> findAllOrders();
    List<Platforms> findAllPlatforms();
    String currentEdition();
}
