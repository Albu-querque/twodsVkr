package org.example.twods.servicePortalSol;

import org.example.twods.entities.portalSol.CustomersPortalSol;
import org.example.twods.entities.portalSol.OrdersPortalSol;
import org.example.twods.entities.portalSol.Portal;
import org.example.twods.repositories.portalSolRepo.CustomersPortalSolRepo;
import org.example.twods.repositories.portalSolRepo.OrdersPortalSolRepo;
import org.example.twods.repositories.portalSolRepo.PortalsRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicePortalSolImpl implements ServicePortalSol{
    private final OrdersPortalSolRepo ordersPortalSolRepo;
    private final CustomersPortalSolRepo customersPortalSolRepo;
    private final PortalsRepo portalsRepo;

    public ServicePortalSolImpl(OrdersPortalSolRepo ordersPortalSolRepo,
                                CustomersPortalSolRepo customersPortalSolRepo,
                                PortalsRepo portalsRepo) {
        this.ordersPortalSolRepo = ordersPortalSolRepo;
        this.customersPortalSolRepo = customersPortalSolRepo;
        this.portalsRepo = portalsRepo;
    }

    @Override
    public List<CustomersPortalSol> findAllCustomers() {
        return customersPortalSolRepo.findAll();
    }

    @Override
    public List<OrdersPortalSol> findAllOrders() {
        return ordersPortalSolRepo.findAll();
    }

    @Override
    public List<Portal> findAllPortals() {
        return portalsRepo.findAll();
    }
}
