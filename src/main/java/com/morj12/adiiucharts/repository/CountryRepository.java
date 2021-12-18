package com.morj12.adiiucharts.repository;

import com.morj12.adiiucharts.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * JPA REPOSITORY FOR "COUNTRY"
 *
 * This repository is needed because it links the Java
 * application to a database table. We need to specify
 * the entity type and the type of primary key.
 *
 * Also, we don't need to override methods because this
 * abstraction already has all methods we need.
 */

public interface CountryRepository extends JpaRepository<Country, String> {
}
