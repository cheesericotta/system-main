<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <title>Home | Al-Ikwaniah Mosque Activity System</title>

  <style>
    
    @import "css/topnavbar.css";

    h2 {
      font-size: 13px;
    }

    h3 {
      color: grey;
      font-family: Segoe UI Light;
    }

    .center {
      display: block;
      margin-left: auto;
      margin-right: auto;
      width: 50%;
    }

    .card {
      background-color: white;
      padding: 20px;
      margin-top: 20px;
      display: block;
      margin-left: auto;
      margin-right: auto;
      width: 80%;
      margin-bottom: 20px;
    }

    p {
      font-size: 16px;
      line-height: 1.6;
      text-align: justify;
      text-justify: inter-word;
      padding-bottom: 25px;
      padding-left: 15px;
      padding-right: 15px;
    }

    .title {
      font-size: 20px;
      font-weight: bold;
      padding-left: 15px;
      padding-right: 15px;
    }
  </style>
</head>

<body>
<%@ include file = "Menu.jsp" %>
 


  <hr style="height:30px;border-width:0;color:#92CF4C;background-color:#92CF4C">
  <img src="assets/brand/mosque.svg" width="70" length="10">
  <b>Al-Ikhwaniah Mosque Activity System</b>
  <hr style="height:30px;border-width:0;color:#92CF4C;background-color:#92CF4C">

  <div class="card">
    <div class="title">Mosque Background</div><br>
    <img class="center" src="assets/brand/masjid.png"><br>
    <p>Al-Ikhwaniah mosque is a mosque that is located on Jalan CU 9, Taman Cheras
      Utama, Cheras, Selangor. It was built on the 1st of January of 2003, and it has
      operated ever since. Masjid Al-Ikhwaniah main business process is to provide a place
      of worship to the Muslims community in Taman Cheras Utama, Selangor. The
      mosque can fit almost 1500 people at a time. Furthermore, the mosque also held many
      activities that allows the nearby community to join such as Islamic lectures, subuh
      lecture, Aqiqah ceremony, charity events and many more. As one of the main
      mosques in Selangor, Masjid Al-Ikhwaniah receives a lot of Muslims that comes to
      perform their prayers and other ibadah every day.</p>
    <h1>
      <p>Contact Us</p>
    </h1>
    <h1> &#128222 03-8886 4000</h1>
    <h1> &#128222 012-291 7885</h1>
  </div>
</body>

</html>