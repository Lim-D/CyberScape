<!DOCTYPE html>
<html>
<head>
    <title>Create Appointment</title>
</head>
<body>
    <h1>Create Appointment</h1>
    <form action="/createAppointment" method="POST">
        <label for="eventTitle">Event Title:</label>
        <input type="text" id="eventTitle" name="eventTitle" required><br><br>

        <label for="startDateTime">Start Date and Time:</label>
        <input type="datetime-local" id="startDateTime" name="startDateTime" required><br><br>

        <label for="endDateTime">End Date and Time:</label>
        <input type="datetime-local" id="endDateTime" name="endDateTime" required><br><br>

        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required><br><br>

        <label for="description">Description:</label>
        <textarea id="description" name="description"></textarea><br><br>

        <input type="submit" value="Create">
    </form>
</body>
</html>
