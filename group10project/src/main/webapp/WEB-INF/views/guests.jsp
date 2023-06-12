<!DOCTYPE html>
<html>
<head>
    <title>Guests</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Ubuntu", sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: linear-gradient(0deg, rgba(2, 0, 36, 1) 0%, rgba(255, 255, 255, 1) 0%, rgba(238, 252, 255, 1) 25%);
            color: #1b1b32;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            max-width: 500px;
            width: 100%;
            height: 300px;
            background: #fff;
            padding: 25px 30px;
            border-radius: 14px;
            box-shadow: 0 5px 10px #aca2b7;
        }

        h1 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        button {
            padding: 12px 20px;
            background-color: #9ec4e6;
            border: none;
            border-radius: 4px;
            color: #1b1b32;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: 0.3s ease;
        }

        button:hover {
            background-color: #0c76d2;
        }
    </style>

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
    <div class="container">
        <h1>Welcome, Guests!</h1>
        <button onclick="redirectToLogin()">Login</button>
        <div id="appointments-container"></div>
    </div>
    <script>
        function redirectToLogin() {
            window.location.href = "/login";
        }
    </script>
</body>
</html>
