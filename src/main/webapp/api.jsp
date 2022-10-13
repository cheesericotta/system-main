<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="UTF-8">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <title>Home | Al-Ikwaniah Mosque Activity System</title>

<title>User List</title>
<style>
    @import "css/topnavbar.css";
    table {
      font-family: "Lato","sans-serif";
      margin-bottom: 3em;
      border-collapse:collapse;
      width: 100%;
    }

    td {
      text-align: center;     
      width: 10em;                    
      padding: 1em;
    }       
    
    .table_th {
      text-align: center;
      padding: 1em;
      background-color: #e8503a;
      color: #7ACB47 ;
      border: 1px solid;
    }
    
    tr {     
        border: 1px solid;
      height: 1em;
    }
    
    table tr:nth-child(even) {
      background-color: #eee;
    }
  </style>
<script>
window.onload = function () {
    var request = new XMLHttpRequest();
    request.open("GET", "https://agile-tor-53095.herokuapp.com/display", true);
    request.onload = function () {
      var user_obj = JSON.parse(this.response);

      var table = document.createElement('table');

      for (var i = 0; i < user_obj.length; i++) {
        var row = table.insertRow(i);
        if (i === 0) {
          row.style.fontWeight = 'bold';
          var cell1 = row.insertCell(0).innerHTML = 'USER ID';
          var cell2 = row.insertCell(1).innerHTML = 'USER NAME';
          var cell3 = row.insertCell(2).innerHTML = 'PHONE NUMBER';
          var cell4 = row.insertCell(3).innerHTML = 'USER PASSWORD';
          var cell5 = row.insertCell(4).innerHTML = 'USER EMAIL';
          var cell6 = row.insertCell(5).innerHTML = 'USER ADDRESS';
    

         
        }
        else {
          var cell1 = row.insertCell(0);
          var cell2 = row.insertCell(1);
          var cell3 = row.insertCell(2);
          var cell4 = row.insertCell(3);
          var cell5 = row.insertCell(4);
          var cell6 = row.insertCell(5);


          cell1.innerHTML = user_obj[i].UserID;
          cell2.innerHTML = user_obj[i].Username;
          cell3.innerHTML = user_obj[i].UserPhoneNo;
          cell4.innerHTML = user_obj[i].UserPassword;
          cell5.innerHTML = user_obj[i].UserEmail;
          cell6.innerHTML = user_obj[i].UserAddress;

        }
      }
      document.getElementById('table_id').appendChild(table);
    };
    request.send();
  }
</script>
</head>
<body>
<%@ include file = "AdminMenu2.jsp" %>
<br>
<br>
<br>
<div id="table_id"></div>
</body>
</html>