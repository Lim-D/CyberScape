package com.cyberscape.group10project.dtos;

import lombok.Data;

import java.time.LocalDateTime;
@Data
public class AppointmentDto {
    private Long id;
    private String eventTitle;
    private LocalDateTime startDateTime;
    private LocalDateTime endDateTime;
    private String location;
    private String description;
    private UserDto user;
    private String guestName;
    private boolean bookedByGuest;

    // Getters and setters
    // ...
}
