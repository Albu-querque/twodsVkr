package org.example.twods.servicePortalSol;

import org.example.twods.entities.portalSol.CustomersPortalSol;
import org.example.twods.entities.portalSol.OrdersPortalSol;
import org.example.twods.entities.portalSol.Portal;

import java.util.List;

public interface ServicePortalSol {
    List<CustomersPortalSol> findAllCustomers();
    List<OrdersPortalSol> findAllOrders();
    List<Portal> findAllPortals();
}
