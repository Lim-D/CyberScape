package com.cyberscape.group10project.controllers.restapi;

import com.cyberscape.group10project.dtos.AppointmentDto;
import com.cyberscape.group10project.dtos.UserDto;
import com.cyberscape.group10project.models.Appointment;
import com.cyberscape.group10project.models.User;
import com.cyberscape.group10project.service.AppointmentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/guest-appointments")
public class GuestAppointmentApiController {

    private final AppointmentService appointmentService;

    public GuestAppointmentApiController(AppointmentService appointmentService) {
        this.appointmentService = appointmentService;
    }

    @GetMapping
    public ResponseEntity<List<AppointmentDto>> getGuestAppointments() {
        List<Appointment> appointments = appointmentService.getAllAppointments();

        List<AppointmentDto> appointmentDtos = appointments.stream()
                .map(this::convertToDto)
                .collect(Collectors.toList());

        return ResponseEntity.ok(appointmentDtos);
    }

    private AppointmentDto convertToDto(Appointment appointment) {
        AppointmentDto dto = new AppointmentDto();
        dto.setId(appointment.getId());
        dto.setEventTitle(appointment.getEventTitle());
        dto.setStartDateTime(appointment.getStartDateTime());
        dto.setEndDateTime(appointment.getEndDateTime());
        dto.setLocation(appointment.getLocation());
        dto.setDescription(appointment.getDescription());
        dto.setUser(convertToDto(appointment.getUser()));
        dto.setGuestName(appointment.getGuestName());
        dto.setBookedByGuest(appointment.isBookedByGuest());
        return dto;
    }

    private UserDto convertToDto(User user) {
        UserDto dto = new UserDto();
        dto.setId(user.getId());
        dto.setUsername(user.getUsername());
        return dto;
    }

    @PostMapping("/{id}/book")
    public ResponseEntity<String> bookAppointment(@PathVariable("id") Long appointmentId,
                                                  @RequestParam("guestName") String guestName) {
        System.out.println("Hello, it reached the Post.");
        appointmentService.bookAppointment(appointmentId, guestName);
        return ResponseEntity.ok("Appointment booked successfully");
    }
}
