package com.cyberscape.group10project.controllers;

import com.cyberscape.group10project.dtos.AppointmentDto;
import com.cyberscape.group10project.models.Appointment;
import com.cyberscape.group10project.models.User;
import com.cyberscape.group10project.repositories.AppointmentRepository;
import com.cyberscape.group10project.service.AppointmentService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;

@Controller
public class AppointmentController {
    private final AppointmentRepository appointmentRepository;

    @Autowired
    private AppointmentService appointmentService;

    public AppointmentController(AppointmentRepository appointmentRepository) {
        this.appointmentRepository = appointmentRepository;
    }

    @GetMapping("/appointments/{id}/edit")
    public String editAppointment(@PathVariable("id") Long id, Model model) {
        Appointment appointment = appointmentService.getAppointmentById(id);

        if (appointment != null) {
            model.addAttribute("appointment", appointment);
            return "edit-appointment";
        } else {
            // Handle appointment not found error
            return "redirect:/home";
        }
    }

    @PostMapping("/appointments/{id}/update")
    public String updateAppointment(@PathVariable("id") Long id, @ModelAttribute("appointment") AppointmentDto updatedAppointment) {
        Appointment appointment = appointmentService.getAppointmentById(id);

        if (appointment != null) {
            // Update the appointment with the new values
            appointment.setEventTitle(updatedAppointment.getEventTitle());
            appointment.setStartDateTime(updatedAppointment.getStartDateTime());
            appointment.setEndDateTime(updatedAppointment.getEndDateTime());
            appointment.setLocation(updatedAppointment.getLocation());
            appointment.setDescription(updatedAppointment.getDescription());

            // Save the updated appointment
            appointmentService.saveAppointment(appointment);
        }

        return "redirect:/home";
    }

    @GetMapping("/createAppointment")
    public String showCreateAppointmentPage(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            // User has an active session, allow access to the homepage
            return "createAppointment";
        } else {
            // User does not have an active session, redirect to the login page
            return "redirect:/login";
        }
    }

    @PostMapping("/createAppointment")
    public String createAppointment(HttpServletRequest request, @RequestParam("eventTitle") String eventTitle,
                                    @RequestParam("startDateTime") LocalDateTime startDateTime,
                                    @RequestParam("endDateTime") LocalDateTime endDateTime,
                                    @RequestParam("location") String location,
                                    @RequestParam("description") String description) {

        // Retrieve the logged-in user from the session
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        // Create the appointment and tie it to the user
        Appointment appointment = new Appointment();
        appointment.setEventTitle(eventTitle);
        appointment.setStartDateTime(startDateTime);
        appointment.setEndDateTime(endDateTime);
        appointment.setLocation(location);
        appointment.setDescription(description);
        appointment.setUser(user);

        // Save the appointment
        appointmentRepository.save(appointment);

        // Redirect to the homepage or any other appropriate page
        return "home";
    }
}
