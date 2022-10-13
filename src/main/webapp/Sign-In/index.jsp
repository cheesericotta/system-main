<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.88.1">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
  <title>Sign In | Al-Ikwaniah Mosque Acticty System</title>

  <!-- Bootstrap core CSS -->
  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="../bootstrap css/navbar/navbar.css" rel="stylesheet">
  <link href="../bootstrap css/list-group/list-group.css" rel="stylesheet">

  <style>
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

    .link a {
      color: black;
      padding-left: 10px;
    }

    .link a:hover {
      color: #92CF4C;
    }
  </style>

  <!-- Custom styles for this template -->
  <link href="../css/signin.css" rel="stylesheet">
</head>

<body class="text-center">
  <div class="container">
    <div class="bg-light p-5 rounded">
      <div class="col-sm-8 mx-auto">
        <main class="form-signin">
          <form action="../SignInController" method="post">
            <img class="mb-4" src="../assets/brand/mosque.svg" alt="" width="90" height="auto">
            <h1 class="h3 mb-3 fw-normal">Please Sign In</h1>

            <div class="form-floating">
              <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email" required>
              <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating">
              <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password" required>
              <label for="floatingPassword">Password</label>
            </div>
            
            <div class="form-floating">
            <div class="d-flex gap-5 justify-content-center">
            	<div class="list-group mx-0">
    				<label class="list-group-item d-flex gap-2">
      					<input class="form-check-input flex-shrink-0" type="radio" name="role" id="admin" value="admin" required >
      					<span>Admin</span>
      					<input class="form-check-input flex-shrink-0" type="radio" name="role" id="user" value="user" >
      					<span>User</span>
    				</label>
  				</div>           
  			</div>
            </div>

            <br><button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
      
      <div class="link">
        <a href="../Sign-Up/index.html">Create Account</a>
      </div>

      <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
      </form>
      </main>
    </div>
  </div>
  </div>

</body>

</html>