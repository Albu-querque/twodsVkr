package org.example.twods.entities.edmc;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;

@Entity
@Table(name = "licenses")
@Data
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Licenses {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    @OneToOne(mappedBy = "licenses")
    Platforms platforms;

    @Column(name = "type_license")
    String typeLicense;
    @Column(name = "base_edition")
    boolean baseEdition;
    @Column(name = "extend_edition")
    boolean extendEdition;
    @Column(name = "corp_edition")
    boolean corpEdition;

}
