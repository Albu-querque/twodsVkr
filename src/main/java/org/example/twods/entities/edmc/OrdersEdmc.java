package org.example.twods.entities.edmc;

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
public class OrdersEdmc {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_platform")
    Platforms platforms;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_customer")
    CustomersEdmc customersEdmc;


    @Column(name = "status_order")
    String statusOrder;
    @Column(name = "total_price")
    String totalPrice;
}
