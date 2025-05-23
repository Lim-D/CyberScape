package com.cyberscape.group10project.repositories;

import com.cyberscape.group10project.models.Appointment;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment, Long> {
    List<Appointment> findByUserId(Long userId);
    // Add other query methods as needed

    @Transactional
    @Modifying
    @Query(value = "DELETE FROM Appointment a WHERE a.id = :id")
    void deleteAppointmentById(Long id);
}
