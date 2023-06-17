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
            background-image: url("${pageContext.request.contextPath}/images/background.jpg");
            background-size: cover;
            background-position: center;

            color: #1b1b32;
            padding: 30px;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            max-width: 500px;
            width: 100%;
            min-height: 300px;
            background: #fff;
            padding: 25px 30px;
            border-radius: 14px;
            box-shadow: 0 5px 10px #aca2b7;
            transition: height 0.3s ease; /* Add transition for smooth height adjustment */
        }

        h1 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        button {
            padding: 12px 20px;
            color: white;
            border: none;
            border-radius: 4px;
            background-color: rgb(37, 75, 87);
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: 0.3s ease;
        }

        button:hover {
          color: white;
          background-color: rgb(76, 152, 175);

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

                // Adjust container height based on the contents
                adjustContainerHeight();
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

            function adjustContainerHeight() {
                var container = $('.container');
                var appointmentsContainer = $('#appointments-container');
                var containerHeight = appointmentsContainer.outerHeight() + 80;
                container.height(containerHeight);
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