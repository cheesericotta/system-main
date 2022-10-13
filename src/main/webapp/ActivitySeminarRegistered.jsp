<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.88.1">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/checkout/">
  <title>Registered Activity | Al-Ikwaniah Mosque Activity System</title>

  <!-- Bootstrap core CSS -->
  <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    @import "css/topnavbar.css";

    .container {
      max-width: 35%;
    }

    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .newbtn {
      background-color: #92CF4C;
      border: none;
    }

    .newbtn:hover {
      background-color: #787878;
    }
    .box {
	  background-color: white;
	  width: 100%;
	  border: 2px solid #7ACB47;
	  padding: 50px;
	  margin: 20px;
	}
  </style>


  <!-- Custom styles for this template -->
  <link href="css/form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">

  <%@ include file = "Menu.jsp" %>

    <div class="container">
      <main>
        <div class="py-5 text-center">
          <img class="d-block mx-auto mb-4" src="assets/brand/mosque.svg" alt="" width="72" height="57">
          <h2>Activity Details</h2>
          <p class="lead">CONGRATULATIONS YOU HAVE SUCCESSFULLY REGISTERED.</p>
        </div>
<div class="box">
        <div class="row g-5">
          <div class="col-md-5 col-lg-4 order-md-last">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
              <span class="text-primary">Participation Status</span>
            </h4>
            <ul class="list-group mb-3">
              <li class="list-group-item d-flex justify-content-between lh-sm">
                <div>
                  <img class="mb-4" src="assets/brand/tick1.png" alt="" width="90" height="auto">
                  <h5>REGISTERED</h5>
                </div>
              </li>
            </ul>
          </div>
          
          <div class="col-md-7 col-lg-8">
            <h4 class="mb-3"> <c:out value="${seminar.activityTitle}" /></h4>
            <form class="needs-validation" novalidate>
              <div class="row g-3">
  				
                
                <div class="col-sm-6">
                  <label for="Time" class="form-label">Start Time:  <c:out value="${seminar.activityStartTime}" /></label>
                </div>
                <div class="col-sm-6">
                  <label for="Time" class="form-label">End Time:  <c:out value="${seminar.activityEndTime}" /></label>
                </div>

                <div class="col-sm-6">
                </div>
                <div class="col-12">
                  <label for="username" class="form-label">Location:<c:out value="${seminar.seminarLocation}" /></label>
                </div>
                <div class="col-12">
                  <label for="username" class="form-label">Fee:<c:out value="${seminar.seminarFee}" /></label>
                </div>
                <div class="col-12">
                  <label for="username" class="form-label">Instructor Name:<c:out value="${seminar.instructorName}" /></label>
                </div>
                <div class="col-12">
                  <label for="username" class="form-label">Name: <c:out value="${user.username}" /></label>
                </div>
                <div class="col-12">
                  <label for="username" class="form-label">Registration Time: <c:out value="${registration.registrationTime}" /></label>
                </div>

                <div class="col-12">
                  <label for="username" class="form-label">Registration Date: <c:out value="${registration.registrationDate}" /></label>
                </div>
				 
                <a href="ViewRegisteredActivityController?UserID=<c:out value="${user.userID}" />"  class="newbtn w-100 btn btn-primary btn-lg">View your registered activity</a>
                </div>
            </form>
            </div>
          </div>
        </div>
      </main>

      <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017–2021</p>
      </footer>
    </div>

    <script src="../../../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../../js/form-validation.js"></script>
</body>

</html>