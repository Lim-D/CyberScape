package com.cyberscape.group10project.service;


import com.cyberscape.group10project.models.Appointment;

import java.util.List;

public interface AppointmentService {
    Appointment getAppointmentById(Long id);
    void saveAppointment(Appointment appointment);
    void deleteAppointment(Long id);
    List<Appointment> getAppointmentsByUser(Long id);

    List<Appointment> getAllAppointments();

    void bookAppointment(Long appointmentId, String guestName);
    // Add other methods as needed
}
