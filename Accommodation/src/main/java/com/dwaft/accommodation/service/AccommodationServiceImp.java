package com.dwaft.accommodation.service;

import com.dwaft.accommodation.model.Accommodation;
import com.dwaft.accommodation.repository.AccommodationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class AccommodationServiceImp implements AccommodationService {

    @Autowired
    AccommodationRepository accommodationRepository;

    @Override
    public List<Accommodation> findAllAccommodation() {
        return accommodationRepository.findAll();
    }

    @Override
    public List<Accommodation> getAccommodationById(int id) {
        List<Accommodation> accommodations = new ArrayList<>();
        for(Accommodation accommodation: accommodationRepository.findAll()) {
            if(accommodation.getId() == id)
                accommodations.add(accommodation);
        }
        return accommodations;
    }
}
