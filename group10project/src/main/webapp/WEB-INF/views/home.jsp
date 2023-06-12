<!DOCTYPE html>
<html>
  <head>
    <title>Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"></head>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;500&display=swap");

      * {
        font-family: "Ubuntu", sans-serif;
        box-sizing: border-box;
      }

      body {
        margin: 0;
        padding: 0;
        background-image: url(https://i.pinimg.com/564x/b0/9b/24/b09b24efb5960e4ee6d47974edc7145c.jpg);
        background-size: cover;
        background-position: center;
      }

      .profile-image {
        width: 200px;
        height: 200px;
        border-radius: 50%;
        object-fit: cover;
      }

      .navbar {
        color: #66fcf1;
        padding: 30px;
        display: flex;
        align-items: center;
      }
      .menu-btn {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 30px;
        height: 20px;
        cursor: pointer;
      }

      .menu-btn-line {
        width: 100%;
        height: 2px;
        background-color: rgb(255, 254, 254);
        margin: 2px 0;
      }

      .logo {
        margin-right: auto;
        font-size: 24px;
        font-weight: bold;
        padding-left: 20px;
        color: #66fcf1;
      }

      .navbar ul {
        list-style-type: none;
        margin: 0;
        padding: 10px;
        display: flex;
      }

      .navbar ul li {
        margin-right: 10px;
      }

      .navbar ul li a {
        color: #fff;
        text-decoration: none;
        padding: 10px;
        font-family: "Ubuntu", sans-serif;
        font-size: small;
        transition: color 0.3s;
      }

      .navbar ul li a:hover {
        color: #ff9800;
      }

      /* .container {
        max-width: 400px;
        margin-right: 50px;
        margin-left: 40px;
        padding: 40px;
        background-color: rgba(232, 236, 236);
        color: rgb(66, 66, 66);
        border-radius: 10px;
      }
      .profile {
        display: flex;
        align-items: left;
        margin-bottom: 20px;
      }

      .profile img {
        width: 100px;
        height: 100px;
        margin-right: 20px;
        border-radius: 50%;
      }

      .profile-info {
        flex-grow: 1;
      }

      .profile-info h2 {
        margin: 0;
      }

      .profile-info p {
        margin: 0;
      }

      .profile-button {
        padding: 10px 20px;
        background-color: rgb(37, 75, 87);
        border: 2px solid rgb(76, 152, 175);
        color: rgb(201, 201, 201);
        border-radius: 4px;
        cursor: pointer;
      }

      .profile-button:hover {
        background-color: rgb(76, 152, 175);
        color: rgb(255, 255, 255);
      } */

      .logout-form {
        display: inline-block;
      }
      .logout-button {
        padding: 10px 20px;
        background-color: rgb(37, 75, 87);
        border: 2px solid rgb(76, 152, 175);
        color: rgb(202, 202, 202);
        border-radius: 4px;
        cursor: pointer;
      }
      .logout-button:hover {
        background-color: rgb(76, 152, 175);
        color: rgb(255, 255, 255);
      }

      /* SECOND PART */

      .second-container {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        width: 80%;
        margin: auto;
        margin-top: 100px;
        padding: 40px;
        background-color: rgba(232, 236, 236);
        color: rgb(66, 66, 66);
        border-radius: 10px;
      }
      .new-button {
        position: relative;
        top: 13px;
        left: 50px;
        padding: 10px 20px;
        background-color: rgb(37, 75, 87);
        border: 2px solid rgb(76, 152, 175);
        color: rgb(202, 202, 202);
        border-radius: 4px;
        cursor: pointer;
      }
      .new-button:hover {
        background-color: rgb(76, 152, 175);
        color: rgb(255, 255, 255);
      }
      .event {
        display: flex;
        align-items: left;
        margin-bottom: 20px;
      }
      .event img {
        width: 100px;
        height: 100px;
        margin-right: 20px;
        border-radius: 50%;
      }
      .event-info {
        flex-grow: 1;
      }

      .event-info h2 {
        margin: 0;
      }

      .event-info p {
        margin: 0;
      }

      #appointments-table {
        width: 100%;
        border-collapse: collapse;
      }

      #appointments-table th,
      #appointments-table td {
        padding: 10px;
        border: 1px solid #ccc;
      }

      #appointments-table th {
        background-color: #f2f2f2;
        font-weight: bold;
      }
      .delete-button {
        padding: 10px 20px;
        background-color: rgb(37, 75, 87);
        border: 2px solid rgb(76, 152, 175);
        color: rgb(202, 202, 202);
        border-radius: 4px;
        cursor: pointer;
      }
      .delete-button:hover {
        background-color: rgb(76, 152, 175);
        color: rgb(255, 255, 255);
      }
      .edit-button {
        padding: 10px 20px;
        background-color: rgb(37, 75, 87);
        border: 2px solid rgb(76, 152, 175);
        color: rgb(202, 202, 202);
        border-radius: 4px;
        cursor: pointer;
      }
      .edit-button:hover {
        background-color: rgb(76, 152, 175);
        color: rgb(255, 255, 255);
      }

      .third-container {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        margin-top: 260px;
        max-width: 1300px;
        margin-right: 0px;
        margin-left: 0px;
        padding: 40px;
        background-color: rgba(232, 236, 236);
        color: rgb(66, 66, 66);
        border-radius: 10px;
      }

        footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            display: flex;
            background-color: #1f2833;
            justify-content: center;
            align-items: center;
        }

        .footer-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex: 1;
            height: auto;
            width: 100%;
            padding: 0 3%;
        }

        .logo img{
            height: 75px;
            width: 375px;
        }

        .contact {
            font-weight: bold;
            font-size: 20px;
            color: white;
        }

        .icons {
            display: flex;
            justify-content: right;
            align-items: center;
        }

        .icons img{
            height: 30px;
            width: 30px;
            margin: 0 5px;
        }

        .rights-reserved {
           flex: 1;
           text-align: center;
           color: white;
           font-size: small;
      }

    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(document).ready(function () {
        // Fetch appointments and render them on the page
        fetchAppointments();

        // Function to delete an appointment
        function deleteAppointment(id) {
          console.log("Deleting appointment with ID: " + id);
          $.ajax({
            url: "/api/delete-appointments/" + id, // Update the URL
            type: "DELETE",
            success: function (response) {
              console.log(response);
              fetchAppointments(); // Fetch appointments again after deletion
            },
            error: function (xhr, status, error) {
              console.log(xhr.responseText);
            },
          });
        }

        // Function to confirm appointment deletion
        function confirmDeleteAppointment(id) {
          var confirmed = confirm(
            "Are you sure you want to delete this appointment?"
          );
          if (confirmed) {
            deleteAppointment(id);
          }
        }

        // Edit appointment
        $(document).on("click", ".edit-button", function () {
          var appointmentId = $(this).data("id");
          window.location.href = "/appointments/" + appointmentId + "/edit";
        });

        // Delete appointment
        $(document).on("click", ".delete-button", function () {
          var appointmentId = $(this).data("id");
          confirmDeleteAppointment(appointmentId); // Pass the appointmentId to the confirmation function
        });

        // Function to fetch appointments
        function fetchAppointments() {
          $.ajax({
            url: "/api/appointments",
            type: "GET",
            success: function (response) {
              renderAppointments(response);
            },
          });
        }

        // Function to render appointments on the page
        function renderAppointments(appointments) {
          var appointmentsTable = $("#appointments-table");
          appointmentsTable.empty();

          $.each(appointments, function (index, appointment) {
            var row = $("<tr>");
            row.append($("<td>").text(appointment.eventTitle));
            row.append($("<td>").text(appointment.startDateTime));
            row.append($("<td>").text(appointment.endDateTime));
            row.append($("<td>").text(appointment.location));
            row.append($("<td>").text(appointment.description));
            row.append($("<td>").text(appointment.guestName));
            row.append(
              $("<td>").text(appointment.bookedByGuest ? "Yes" : "No")
            );
            row.append(
              $("<td>").html(
                '<button class="edit-button" data-id="' +
                  appointment.id +
                  '">Edit</button>'
              )
            );
            row.append(
              $("<td>").html(
                '<button class="delete-button" data-id="' +
                  appointment.id +
                  '">Delete</button>'
              )
            );

            appointmentsTable.append(row);
          });
        }


        renderAppointments(appointments);
      });
    </script>
  </head>
  <body>
    <div class="navbar">
      <div class="menu-btn">
        <div class="menu-btn-line"></div>
        <div class="menu-btn-line"></div>
        <div class="menu-btn-line"></div>
      </div>
      <div class="logo">Bookify</div>
      <ul>
        <li><a href="#">HOME</a></li>
        <li><a href="http://localhost:8080/about" onclick="">ABOUT</a></li>
      </ul>
    </div>

    <!-- <div class="container">
      <div class="profile">
        <img src="dar.jpg" alt="Profile Picture" />
        <div class="profile-image">
          <h2>Darius Lim</h2>
          <p>Email: darius.lim@gmail.com</p>
          <p>Location: Philippines</p>
          <button class="profile-button">Edit Profile</button>
        </div>
      </div>

      <h3>About Me</h3>
      <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae
        vestibulum velit, ut malesuada massa. Vestibulum eget aliquet risus.
      </p>

      <h3>Interests</h3>
      <ul>
        <li>Reading</li>
        <li>Travelling</li>
        <li>Photography</li>
      </ul>
    </div> -->

    <div class="second-container">
      <div class="event">
        <div class="event-image">
          <div class="welcome">
            <h1>Welcome, ${user.username}!</h1>
          </div>
          <div class="event">
            <div class="event-element">
              <h2>Your Appointments</h2>
            </div>

            <div class="event-element">
              <button class="new-button" onclick="redirectToNewAppointment()">
                New +
              </button>
            </div>
          </div>
          <table id="appointments-table">
            <thead>
              <tr>
                <th>Event Title</th>
                <th>Start Date/Time</th>
                <th>End Date/Time</th>
                <th>Location</th>
                <th>Description</th>
                <th>Guest Name</th>
                <th>Booked by Guest</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>
              <!-- Table rows (generated dynamically) -->
            </tbody>
          </table>
        </div>
      </div>
      <div class="logout">
        <form action="/logout" method="post" class="logout-form">
          <input type="submit" value="Logout" class="logout-button" />
        </form>
      </div>
      <script>
        function redirectToNewAppointment() {
          window.location.href = "/createAppointment";
        }
      </script>
    </div>
  </body>

  <footer>
    <div class="footer-container">
        <h1 class="logo">
            <img src="bookify.gif" alt="logo">
        </h1>
        <div class="rights-reserved">&copy; 2023 Bookify. All Rights Reserved.</div>
        <div class="contact">Contact Us:&nbsp;</div>
        <div class="icons">
           <a class="facebook" href="https://www.facebook.com/profile.php?id=100093647646549" target="_blank">
               <img src="https://i.ibb.co/946fCBF/fb.png" alt="facebook">
           </a>
           <a class="twitter" href="https://twitter.com/Bookify_wxc" target="_blank">
               <img src="https://i.ibb.co/wQzr0xr/twt.png" alt="twitter">
           </a>
           <a class="gmail" href="mailto:bookify.wxc@gmail.com" target="_blank">
               <img src="https://i.ibb.co/Rh52xBy/mail.png" alt="gmail">
          </a>
    </div>
</footer>

</html>
