package org.example.twods.entities.portalSol;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;

@Entity
@Table(name = "orders")
@Data
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrdersPortalSol {
    @Id
    Long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_portal")
    Portal portal;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_customer")
    CustomersPortalSol customer;

    String date;
    @Column(name = "status_order")
    String statusOrder;
    @Column(name = "total_price")
    String totalPrice;
}
