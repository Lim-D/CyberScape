package com.cyberscape.group10project.controllers.restapi;

import com.cyberscape.group10project.dtos.AppointmentDto;
import com.cyberscape.group10project.dtos.UserDto;
import com.cyberscape.group10project.models.Appointment;
import com.cyberscape.group10project.models.User;
import com.cyberscape.group10project.repositories.UserRepository;
import com.cyberscape.group10project.service.AppointmentService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/appointments")
public class AppointmentApiController {

    private final UserRepository userRepository;
    private final AppointmentService appointmentService;

    public AppointmentApiController(UserRepository userRepository, AppointmentService appointmentService) {
        this.userRepository = userRepository;
        this.appointmentService = appointmentService;
    }

    @GetMapping
    public ResponseEntity<List<AppointmentDto>> getAppointmentsByUser(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User user = (User) session.getAttribute("user");
            List<Appointment> appointments = appointmentService.getAppointmentsByUser(user.getId());

            List<AppointmentDto> appointmentDtos = appointments.stream()
                    .map(this::convertToDto)
                    .collect(Collectors.toList());

            return ResponseEntity.ok(appointmentDtos);
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
    }


//    @DeleteMapping("/{id}")
//    public ResponseEntity<String> deleteAppointment(@PathVariable("id") Long id) {
//        appointmentService.deleteAppointment(id);
//        return ResponseEntity.ok("Appointment deleted successfully");
//    }
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
}
