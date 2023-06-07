package com.cyberscape.group10project.service;

import com.cyberscape.group10project.models.Appointment;
import com.cyberscape.group10project.models.User;
import com.cyberscape.group10project.repositories.UserRepository;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {


    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public User getUserById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    @Override
    @CacheEvict(value = "userAppointments", key = "#userId")
    public List<Appointment> getUserAppointments(Long userId) {
        User user = getUserById(userId);
        if (user != null) {
            return user.getAppointments();
        }
        return Collections.emptyList();
    }


    // Implement other methods if needed
}
