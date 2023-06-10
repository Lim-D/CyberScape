<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

  <style>
    @import url("https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;500&display=swap");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Ubuntu", sans-serif;
    }

    .container {
      height: 100vh;
      width: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: row;
      position: relative;
      background: rgb(2, 0, 36);
      background: linear-gradient(
        0deg,
        rgba(2, 0, 36, 1) 0%,
        rgba(255, 255, 255, 1) 0%,
        rgba(238, 252, 255, 1) 25%
      );
      padding: 20px;
    }

    .intro {
      text-align: center;
      margin-bottom: 10px;
      margin-right: 30px;
    }

    header {
      font-size: 28px;
      font-weight: 600;
      color: #232832;
      text-align: center;
    }

    .register {
      margin-top: 25px;
      width: 40%;
      height: 24px;
      outline: none;
      background: transparent;
      border: none;
      cursor: pointer;
      text-decoration: underline #0171d3;
    }

    h2,
    .link {
      font-size: 18px;
      font-weight: 600;
      color: #232832;
      text-align: center;
    }

    .link:hover {
      text-decoration: underline;
    }

    .line {
      position: relative;
      height: 1px;
      width: 100%;
      margin: 20px 0;
      background-color: #d4d4d4;
    }

    .line::before {
      content: "Or";
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: #fff;
      color: #232826;
      padding: 0 15px;
    }

    .form {
      position: absolute;
      max-width: 630px;
      width: 100%;
      height: 450px;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: row;
      padding: 50px;
      margin: auto;
      border-radius: 16px;
      background: white;
      border-bottom: 3px solid #59596c;
      box-shadow: 0 5px 10px #aca2b7;
    }

    form .field {
      position: relative;
      height: 50px;
      width: 100%;
      margin: 20px;
      /* text-align: center; */
    }

    .field label {
      left: 0;
    }

    .field input {
      height: 100%;
      width: 100%;
      font-size: 16px;
      font-weight: 400;
      border-radius: 6px;
      outline: none;
      padding: 0 15px;
      border: 1px solid #cacaca;
    }

    .field input:focus {
      border-bottom-width: 4px;
    }

    .input-field {
      margin-bottom: 30px;
    }

    .button {
      border: none;
      font-size: 16px;
      padding: 8px;
      font-weight: 400;
      border-radius: 6px;
      cursor: pointer;
      color: white;
      background-color: #0171d3;
      transition: all 0.3s ease;
      margin-top: 10px;
    }
    .button:hover {
      color: white;
      background-color: rgb(81, 140, 193);
    }
  </style>


</head>
  <body>
    <script>
      function redirectToRegistration() {
        window.location.href = "/registration";
      }
    </script>

    <section class="container login">
      <div class="form content">
        <div class="intro">
          <header>WELCOME</header>
          <button class="register link" onclick="redirectToRegistration()">
            Register
          </button>
          <div class="line"></div>
          <h2>Login</h2>
        </div>

        <form action="/login" method="POST">
          <div class="field input-field">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required />
          </div>

          <div class="field input-field">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required />
          </div>

          <div class="field">
            <input type="submit" class="button" value="Login" />
          </div>
        </form>
      </div>
    </section>
  </body>
</html>

