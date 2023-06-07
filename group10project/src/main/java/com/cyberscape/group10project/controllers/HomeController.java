package com.cyberscape.group10project.controllers;

import com.cyberscape.group10project.models.Appointment;
import com.cyberscape.group10project.models.User;
import com.cyberscape.group10project.service.AppointmentService;
import com.cyberscape.group10project.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;

    @Autowired
    private AppointmentService appointmentService;

    @GetMapping("/home")
    public String showHomePage(HttpServletRequest request, Model model, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            List<Appointment> appointments = userService.getUserAppointments(user.getId());
            model.addAttribute("appointments", appointments);

            // Set CacheControl header to disable caching
            response.setHeader("Cache-Control", CacheControl.noStore().mustRevalidate().getHeaderValue());

            return "home";
        } else {
            return "redirect:/login";
        }
    }
    @PostMapping("/logout")
    public String logoutUser(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            // Clear the session data
            session.invalidate();
        }
        // Redirect the user to the login page
        return "redirect:/login";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String guests(Model model) {
        List<Appointment> appointments = appointmentService.getAllAppointments();
        model.addAttribute("appointments", appointments);
        return "guests"; // Return the name of the guests.jsp file
    }

}
