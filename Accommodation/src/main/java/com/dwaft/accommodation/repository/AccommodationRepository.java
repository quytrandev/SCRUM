package com.dwaft.accommodation.repository;

import com.dwaft.accommodation.model.Accommodation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccommodationRepository extends JpaRepository<Accommodation,Integer> {
}
