package com.cyberscape.group10project.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import java.time.LocalDateTime;


@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String eventTitle;

    private LocalDateTime startDateTime;

    private LocalDateTime endDateTime;

    private String location;

    private String description;

    private String guestName;

    private boolean bookedByGuest;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    // Constructors, getters, setters, and other methods

    public void setUser(User user) {
        this.user = user;
        user.getAppointments().add(this);
    }

    public User getUser() {
        return user;
    }

    // Additional methods if needed

    public boolean isUpcoming() {
        LocalDateTime currentDateTime = LocalDateTime.now();
        return startDateTime.isAfter(currentDateTime);
    }

    public long getDurationMinutes() {
        return java.time.Duration.between(startDateTime, endDateTime).toMinutes();
    }

    public void bookAppointment(String guestName) {
        this.guestName = guestName;
        this.bookedByGuest = true;
    }

    public void cancelBooking() {
        this.guestName = null;
        this.bookedByGuest = false;
    }

    public boolean isBooked() {
        return bookedByGuest;
    }

    public boolean isBookedByGuest() {
        return bookedByGuest;
    }

    public String getGuestName() {
        return guestName;
    }

    public void setGuestName(String guestName) {
        this.guestName = guestName;
    }

    public void setBookedByGuest(boolean bookedByGuest) {
        this.bookedByGuest = bookedByGuest;
    }
}
