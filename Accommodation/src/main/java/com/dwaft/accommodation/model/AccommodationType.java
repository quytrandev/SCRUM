package com.dwaft.accommodation.model;

import javax.persistence.*;

@Table(name = "accommodationtype")
@Entity
public class AccommodationType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "typeid")
    private Integer typeId;

    @Column(name = "typename")
    private String typeName;

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
