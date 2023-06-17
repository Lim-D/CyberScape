

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About</title>

    <link
      href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
      rel="stylesheet"
    />
   <link rel="stylesheet" type="text/css" href="<c:url value='/css/about-style.css' />">
  </head>

  <style>
    @import url("https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;500&display=swap");

    *{
      padding: 0;
      margin: 0;
      font-family:"Ubuntu", sans-serif;
      box-sizing: border-box;

    }

    body {
      /* background-image: url("${pageContext.request.contextPath}/images/bookify.gif");
      background-size: cover; */
      background-color: #1f2833;
    }


    .navbar {
      /* color: #66fcf1; */
      padding: 30px;
      display: flex;
      align-items: center;
      background: #162231;
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
      color: #66fcf1;
      text-decoration: none;
      padding: 10px;
      font-family: "Ubuntu", sans-serif;
      font-size: 14px;
      transition: color 0.3s;
    }

    .navbar ul li a:hover {
      color: #45a293;
    }

    .bookify img {
      width: 1260px;
    }



    .about {
      width: 100%;
     padding: 78px 0px;
    }


    .logo {
       left: 300px;

    }

    /* .main .logo-bookify {
      height: auto;
      width: 420px;
      font-size: 55px;
      font-weight: 600;
      color: aliceblue;
      text-align: center;
      margin-bottom: 20px;

    } */

    .about-text {
      width: 550px;
      padding: 30px;
      margin-bottom: 10px;
    }

    .main {
      height: 100vh;
      width: 1130px;
      max-width: 95%;
      margin: 0 auto;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;

    }

    .main .bx {
      font-size: 55px;
    }

    .about-text h2 {
      color: #66fcf1;
      font-size: 30px;
      text-transform: capitalize;
      margin-bottom: 20px;
      text-align: center;
    }


    .title {
      font-size: 20px;
      font-weight: 500;
      position: relative;
      margin-bottom: 30px;
    }



    .about-us {
      font-size: 20px;
      font-weight: 500;
      position: relative;
      margin-bottom: 30px;
    }
    .about-us::before {
        content: "";
        position: absolute;
        height: 3px;
        width:110px;
        background: #66fcf1;
        left: 190px;
        bottom: 0;
        top: 40px;
    }



    .about-text p {
      color: #66fcf1;
      letter-spacing: 1px;
      line-height: 30px;
      font-weight: 18px;
      margin-bottom: 45px;
      text-align: center;
      padding: 10px;
    }


    .line {
      position: relative;
      height: 1px;
      width: 100%;
      margin: 20px 0;
      background-color: transparent;
    }

    .line::before {
      content: "";
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: violet;
      color: aliceblue;
      padding: 0 15px;
    }

    /* PROFILES */

    .container {
      margin: 20px 40px;
      color: azure;
      margin-top: 150px;

    }

    .heading {
      font-size: 60px;
      color: #45a293;
      text-align: center;
      margin-bottom: 100px;
    }

    .heading span {
      font-style: italic;
      font-size: 30px;
      color: #66fcf1;
    }


    .profiles {
      display: flex;
      text-align: center;
      justify-content: space-around;
      margin: 20px 80px;
    }

    .profile-image {
      width: 200px;
      height: 240px;
      border-radius: 50%;
      cursor: pointer;
      transition: 400ms;
      object-fit:cover;
    }

    .eachProfile {
      flex-basis: 200px;
      color: #45a293;
    }

    .user-name {
      margin-top: 30px;
      font-size: 35px;
      font-weight: 600;
    }

    .profiles h5 {
      font-size: 18px;
      font-weight: 500;
      letter-spacing: 3px;
      color: #66fcf1;
      padding: 7px;

    }
  </style>


  <body>
    <div class="navbar">
      <div class="menu-btn">
        <div class="menu-btn-line"></div>
        <div class="menu-btn-line"></div>
        <div class="menu-btn-line"></div>
      </div>
      <div class="logo">Bookify</div>
      <ul>
        <li><a href="http://localhost:8080/home">HOME</a></li>
        <li><a href="#" onclick="">ABOUT</a></li>
      </ul>
    </div>
    <div class="bookify">
       <img src="${pageContext.request.contextPath}/images/bookify.gif" alt="Bookify Logo" />
    </div>
    <section class="about">
      <div class="main">
        <div class="about-text">
          <div class="about-us">
            <h2>About Us</h2>
          </div>

          <p>
            Introducing Bookify, a cutting-edge web booking app designed to
            simplify the appointment booking process. Developed with the latest
            technologies and tools including HTML, CSS, JavaScript, Java,
            SpringBoot with embedded Tomcat Server, JSP, and MySQL, Bookify
            offers a seamless and efficient user experience. <br /><br />
            Bookifys main objective is to create a simple and intuitive system
            that empowers users to easily book appointments and manage their
            schedules. With its user-friendly interface and robust
            functionalities, users can effortlessly create, edit, and delete
            appointments according to their availability and preferences.
          </p>
        </div>
      </div>

      <div class="line"></div>

      <div class="container">
        <h1 class="heading"><span>meet</span>Our Team</h1>
        <div class="profiles">
          <div class="eachProfile">
            <img src="${pageContext.request.contextPath}/images/Darius.jpg" alt="Darius Lim" class="profile-image" />
            <h3 class="user-name">Darius Lim</h3>
            <h5 class="">Leader/Programmer</h5>
          </div>

          <!-- TRISTAN -->

          <div class="eachProfile">
            <img src="${pageContext.request.contextPath}/images/Tristan.jpg" alt="Tristan Ocampo" class="profile-image" />

            <h3 class="user-name">Tristan Ocampo</h3>
            <h5>Business Analyst</h5>
          </div>

          <!-- JULI -->
          <div class="eachProfile">
            <img src="${pageContext.request.contextPath}/images/Juli.PNG" alt="Julianne Rico" class="profile-image" />

            <h3 class="user-name">Julianne Rico</h3>
            <h5>Programmer</h5>
          </div>

          <!-- BRIX -->

          <div class="eachProfile">
            <img src="${pageContext.request.contextPath}/images/brix.jpg" alt="Brixneil Shafer" class="profile-image" />

            <h3 class="user-name">Brixneil Shafer</h3>
            <h5>Programmer</h5>
          </div>
        </div>
      </div>
    </section>
  </body>
  </html>
