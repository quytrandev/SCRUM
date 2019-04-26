package com.dwaft.accommodation.service;

import com.dwaft.accommodation.model.Accommodation;

import java.util.List;

public interface AccommodationService {
    List<Accommodation> findAllAccommodation();
    List<Accommodation> getAccommodationById(int id);
}