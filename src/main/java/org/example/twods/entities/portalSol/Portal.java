package org.example.twods.entities.portalSol;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;

@Entity
@Table(name = "portal")
@Data
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Portal {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    String type;
    String description;

    @OneToOne(mappedBy = "portal")
    OrdersPortalSol order;
}
