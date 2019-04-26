package com.dwaft.accommodation.service;

import com.dwaft.accommodation.model.Accommodation;

import java.util.List;

public interface AccommodationService {
    List<Accommodation> findAllAccommodation();
<<<<<<< HEAD
    List<Accommodation> getAccommodationById(int id);
=======
    public Accommodation getAccommodationById(int id);

    public void saveOrUpdateAccommodation(Accommodation accommodation);

    public void deleteAccommodation(int id);
>>>>>>> 27d73fdd59d7f6197d8e2588f684a81b54b89fa2
}