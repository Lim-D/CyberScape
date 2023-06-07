<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Appointment</title>
</head>
<body>
    <h1>Edit Appointment</h1>

    <form action="/appointments/${appointment.id}/update" method="post">
        <label for="eventTitle">Event Title:</label>
        <input type="text" id="eventTitle" name="eventTitle" value="${appointment.eventTitle}" required>
        <br>
        <label for="startDateTime">Start Date and Time:</label>
        <input type="datetime-local" id="startDateTime" name="startDateTime" value="${appointment.startDateTime}" required>
        <br>
        <label for="endDateTime">End Date and Time:</label>
        <input type="datetime-local" id="endDateTime" name="endDateTime" value="${appointment.endDateTime}" required>
        <br>
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" value="${appointment.location}" required>
        <br>
        <label for="description">Description:</label>
        <textarea id="description" name="description" required>${appointment.description}</textarea>
        <br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
