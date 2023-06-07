<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
          // Fetch appointments and render them on the page
          fetchAppointments();

          // Function to delete an appointment
          function deleteAppointment(id) {
            console.log("Deleting appointment with ID: " + id);
            $.ajax({
              url: '/api/delete-appointments/' + id, // Update the URL
              type: 'DELETE',
              success: function(response) {
                console.log(response);
                fetchAppointments(); // Fetch appointments again after deletion
              },
              error: function(xhr, status, error) {
                console.log(xhr.responseText);
              }
            });
          }


          // Function to confirm appointment deletion
          function confirmDeleteAppointment(id) {
            var confirmed = confirm("Are you sure you want to delete this appointment?");
            if (confirmed) {
              deleteAppointment(id);
            }
          }

          // Edit appointment
          $(document).on('click', '.edit-btn', function() {
            var appointmentId = $(this).data('id');
            window.location.href = '/appointments/' + appointmentId + '/edit';
          });

          // Delete appointment
          $(document).on('click', '.delete-btn', function() {
            var appointmentId = $(this).data('id');
            confirmDeleteAppointment(appointmentId); // Pass the appointmentId to the confirmation function
          });

          // Function to fetch appointments
          function fetchAppointments() {
            $.ajax({
              url: '/api/appointments',
              type: 'GET',
              success: function(response) {
                renderAppointments(response);
              }
            });
          }

          // Function to render appointments on the page
          function renderAppointments(appointments) {
            var appointmentsTable = $('#appointments-table');
            appointmentsTable.empty();

            $.each(appointments, function(index, appointment) {
              var row = $('<tr>');
              row.append($('<td>').text(appointment.eventTitle));
              row.append($('<td>').text(appointment.startDateTime));
              row.append($('<td>').text(appointment.endDateTime));
              row.append($('<td>').text(appointment.location));
              row.append($('<td>').text(appointment.description));
              row.append($('<td>').text(appointment.guestName));
              row.append($('<td>').text(appointment.bookedByGuest ? 'Yes' : 'No'));
              row.append($('<td>').html('<button class="edit-btn" data-id="' + appointment.id + '">Edit</button>'));
              row.append($('<td>').html('<button class="delete-btn" data-id="' + appointment.id + '">Delete</button>'));

              appointmentsTable.append(row);
            });
          }
        });
    </script>
</head>
<body>
    <h1>Welcome, ${user.username}!</h1>

    <h2>Your Appointments:</h2>
    <table id="appointments-table"></table>

    <br>
    <button onclick="redirectToNewAppointment()">NewAppointment</button>
    <script>
        function redirectToNewAppointment() {
            window.location.href = "/createAppointment";
        }
    </script>
    <form action="/logout" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
