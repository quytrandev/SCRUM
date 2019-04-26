package com.dwaft.accommodation.service;

import com.dwaft.accommodation.model.Accommodation;

import java.util.List;

public interface AccommodationService {
    List<Accommodation> findAllAccommodation();
    public Accommodation getAccommodationById(int id);

    public void saveOrUpdateAccommodation(Accommodation accommodation);

    public void deleteAccommodation(int id);
}