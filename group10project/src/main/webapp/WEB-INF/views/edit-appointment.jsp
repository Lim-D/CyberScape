<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Edit Appointment</title>
  </head>

  <style>
    @import url("${pageContext.request.contextPath}/images/background.jpg");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Ubuntu", sans-serif;
    }

    body {
      display: flex;
      height: 100vh;
      justify-content: center;
      align-items: center;
      background-image: url(https://i.pinimg.com/564x/b0/9b/24/b09b24efb5960e4ee6d47974edc7145c.jpg);
      background-size: cover;
      background-position: center;
      padding: 20px;
      color: #1b1b32;
    }

    .container {
      max-width: 700px;
      width: 100%;
      background: #fff;
      padding: 25px 30px;
      border-radius: 14px;
      box-shadow: 0 5px 10px #aca2b7;
    }

    .title {
      font-size: 20px;
      font-weight: 500;
      position: relative;
      margin-bottom: 30px;
    }

    .title::before {
      content: "";
      position: absolute;
      height: 3px;
      width: 35px;
      background: linear-gradient(135deg, #71b7e6, #9b59b6);
      left: 0;
      bottom: 0;
    }

    .container form .appointmentDetails {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin: 20px 0px 12px 0;
    }

    form .appointmentDetails .input-box {
      margin-bottom: 20px;
      width: calc(100% / 2 - 20px);
    }

    .input-box label {
      font-weight: 500;
      margin-bottom: 5px;
      display: block;
    }

    .input-box input {
      height: 45px;
      width: 100%;
      border-radius: 5px;
      border: 1px solid #cacaca;
      border-bottom-width: 2px;
      transition: all 0.3s ease;
      padding: 15px;
      font-size: 16px;
      outline: none;
    }

    .input-box input:focus,
    .input-box input:valid {
      border-color: #71b7e6;
    }

    .description textarea {
      height: 65px;
      max-height: 95px;
      width: 100%;
      max-width: 100%;
      border-radius: 5px;
      border: 1px solid #cacaca;
      border-bottom-width: 2px;
      transition: all 0.3s ease;
      padding: 15px;
      font-size: 16px;
      outline: none;
    }

    .description textarea:focus,
    .description textarea:valid {
      border-color: #71b7e6;
    }

    form .button {
      height: 50px;
      margin: 15px 0;
    }

    .button input {
      height: 100%;
      width: 100%;
      outline: none;
      border: none;
      border-radius: 4px;
      color: 1b1b32;
      background-color: #9ec4e6;
      transition: all 0.3s ease;
      font-size: 18px;
      font-weight: 500;
      letter-spacing: 1px;
      cursor: pointer;
    }

    .button input:hover {
      background-color: #c7d6e2;
    }
  </style>

  <body>
    <div class="container">
      <div class="title">
        <h1>Edit Appointment</h1>
      </div>

      <form action="/appointments/${appointment.id}/update" method="post">
        <div class="appointmentDetails">
          <div class="input-box">
            <label for="eventTitle">Event Title:</label>
            <input
              type="text"
              id="eventTitle"
              name="eventTitle"
              value="${appointment.eventTitle}"
              required
            />
          </div>

          <div class="input-box">
            <label for="startDateTime">Start Date and Time:</label>
            <input
              type="datetime-local"
              id="startDateTime"
              name="startDateTime"
              value="${appointment.startDateTime}"
              required
            />
          </div>

          <div class="input-box">
            <label for="endDateTime">End Date and Time:</label>
            <input
              type="datetime-local"
              id="endDateTime"
              name="endDateTime"
              value="${appointment.endDateTime}"
              required
            />
          </div>

          <div class="input-box">
            <label for="location">Location:</label>
            <input
              type="text"
              id="location"
              name="location"
              value="${appointment.location}"
              required
            />
          </div>

          <div class="input-box description">
            <label for="description">Description:</label>
            <textarea id="description" name="description" required>
${appointment.description}</textarea
            >
          </div>
        </div>

        <div class="button">
          <input type="submit" value="Update" />
        </div>
      </form>
    </div>
  </body>
</html>
