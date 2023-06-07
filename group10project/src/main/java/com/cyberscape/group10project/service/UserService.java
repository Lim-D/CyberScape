package com.cyberscape.group10project.service;

import com.cyberscape.group10project.models.Appointment;
import com.cyberscape.group10project.models.User;

import java.util.List;

public interface UserService {
    User getUserById(Long id);
    List<Appointment> getUserAppointments(Long userId);
    // Other methods as needed
}
