package com.cyberscape.group10project.service;

import com.cyberscape.group10project.models.Appointment;
import com.cyberscape.group10project.repositories.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;

@Service
public class AppointmentServiceImpl implements AppointmentService {

    private final AppointmentRepository appointmentRepository;

    public AppointmentServiceImpl(AppointmentRepository appointmentRepository) {
        this.appointmentRepository = appointmentRepository;
    }

    @Override
    public Appointment getAppointmentById(Long id) {
        return appointmentRepository.findById(id)
                .orElseThrow(() -> new NoSuchElementException("Appointment not found with ID: " + id));
    }

    @Override
    public void saveAppointment(Appointment appointment) {
        appointmentRepository.save(appointment);
    }

    @Override
    public void deleteAppointment(Long id) {
        System.out.println("Deleting appointment with ID: " + id);
        appointmentRepository.deleteAppointmentById(id);
    }


    @Override
    public List<Appointment> getAppointmentsByUser(Long id) {
        return appointmentRepository.findByUserId(id);
    }

    @Override
    public List<Appointment> getAllAppointments() {
        return appointmentRepository.findAll();
    }

    @Override
    public void bookAppointment(Long appointmentId, String guestName) {
        Appointment appointment = appointmentRepository.findById(appointmentId)
                .orElseThrow(() -> new IllegalArgumentException("Invalid appointment ID"));

        if (appointment.isBookedByGuest()) {
            throw new IllegalStateException("Appointment is already booked");
        }

        appointment.setGuestName(guestName);
        appointment.setBookedByGuest(true);
        appointmentRepository.save(appointment);
    }
    // Implement other methods if needed
}
