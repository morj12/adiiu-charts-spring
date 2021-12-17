package com.morj12.adiiucharts.repository;


import com.morj12.adiiucharts.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CountryRepository extends JpaRepository<Country, String> {
    @Override
    List<Country> findAll();
}
