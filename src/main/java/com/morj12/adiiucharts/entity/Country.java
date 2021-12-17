package com.morj12.adiiucharts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "country_info")
public class Country {

    @Id
    @Column(name = "country")
    private String name;
    @Column(name = "grosswage")
    private int grossWage;
    @Column(name = "netwage")
    private int netWage;
    @Column(name = "gdp")
    private int gdp;

    public Country(String name, int grossWage, int netWage, int gdp) {
        this.name = name;
        this.grossWage = grossWage;
        this.netWage = netWage;
        this.gdp = gdp;
    }

    public Country() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGrossWage() {
        return grossWage;
    }

    public void setGrossWage(int grossWage) {
        this.grossWage = grossWage;
    }

    public int getNetWage() {
        return netWage;
    }

    public void setNetWage(int netWage) {
        this.netWage = netWage;
    }

    public int getGdp() {
        return gdp;
    }

    public void setGdp(int gdp) {
        this.gdp = gdp;
    }
}
