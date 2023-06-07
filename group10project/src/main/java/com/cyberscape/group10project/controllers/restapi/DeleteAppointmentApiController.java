package com.cyberscape.group10project.controllers.restapi;

import com.cyberscape.group10project.service.AppointmentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/delete-appointments")
public class DeleteAppointmentApiController {

    private final AppointmentService appointmentService;

    public DeleteAppointmentApiController(AppointmentService appointmentService) {
        this.appointmentService = appointmentService;
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteAppointment(@PathVariable("id") Long id) {
        appointmentService.deleteAppointment(id);
        return ResponseEntity.ok("Appointment deleted lmao successfully");
    }
}
