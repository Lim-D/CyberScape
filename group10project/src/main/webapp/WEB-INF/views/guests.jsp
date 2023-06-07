<!DOCTYPE html>
<html>
<head>
    <title>Guests</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // Fetch all appointments
            fetchAppointments();

            // Function to fetch appointments
            function fetchAppointments() {
                $.ajax({
                    url: '/api/guest-appointments',
                    type: 'GET',
                    success: function(response) {
                        var nonBookedAppointments = response.filter(function(appointment) {
                            return !appointment.bookedByGuest;
                        });
                        renderAppointments(nonBookedAppointments);
                    }
                });
            }


            // Function to render appointments on the page
            function renderAppointments(appointments) {
                var appointmentsContainer = $('#appointments-container');
                appointmentsContainer.empty();

                // Loop through the appointments and create the HTML for each
                $.each(appointments, function(index, appointment) {
                    var appointmentHtml = '<div class="appointment">' +
                        '<h3>' + appointment.eventTitle + '</h3>' +
                        '<p>Start: ' + appointment.startDateTime + '</p>' +
                        '<p>End: ' + appointment.endDateTime + '</p>' +
                        '<p>Location: ' + appointment.location + '</p>' +
                        '<p>Description: ' + appointment.description + '</p>' +
                        '<button class="book-btn" data-id="' + appointment.id + '">Book</button>' +
                        '</div>';

                    appointmentsContainer.append(appointmentHtml);
                });

                // Attach event handler for booking button
                $('.book-btn').click(function() {
                    var appointmentId = $(this).data('id');
                    var guestName = prompt('Please enter your name:');
                    if (guestName) {
                        bookAppointment(appointmentId, guestName);
                    }
                });
            }

            // Function to book an appointment
            function bookAppointment(appointmentId, guestName) {
                $.ajax({
                    url: '/api/guest-appointments/' + appointmentId + '/book',
                    type: 'POST',
                    data: { guestName: guestName },
                    success: function(response) {
                        alert('Appointment booked successfully!');
                    }
                });
            }
        });
    </script>
</head>
<body>
    <h1>Guests</h1>
    <button onclick="redirectToLogin()">Login</button>
    <div id="appointments-container"></div>
    <script>
            function redirectToLogin() {
                window.location.href = "/login";
            }
    </script>
</body>
</html>
