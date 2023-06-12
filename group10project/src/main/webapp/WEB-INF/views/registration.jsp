<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>User Registration</title>

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
        background-image: url(https://i.pinimg.com/564x/b0/9b/24/b09b24efb5960e4ee6d47974edc7145c.jpg);
        background-size: cover;
        background-position: center;
        padding: 20px;
        padding: 20px;
      }

      .intro {
        text-align: center;
        margin-bottom: 10px;
      }

      h2 {
        font-size: 28px;
        font-weight: 600;
        color: #232832;
        text-align: center;
      }

      .form {
        position: absolute;
        max-width: 630px;
        width: 100%;
        height: 450px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
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
        margin: 30px;
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
    <section class="container login">
      <div class="form content">
        <div class="intro">
          <h2>User Registration</h2>
        </div>
        <form action="/register" method="POST">
          <div class="field input-field">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required />
          </div>

          <div class="field input-field">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required />
          </div>

          <div class="field input-field">
            <input type="submit" class="button" value="Register" />
          </div>
        </form>
      </div>
    </section>
  </body>
</html>
