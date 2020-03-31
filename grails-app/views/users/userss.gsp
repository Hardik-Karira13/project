<!DOCTYPE html>
<html>
<head>
<title>
</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <div class="panel panel-primary" style="background-color:lightblue";>
  <div class="panel-body">
   <div class="col-lg-3">
    <h3><u>Link Sharing</u></h3>
   </div>
  <div class="col-lg-9">
    <div class="col-sm-3">
  <input type="text" id=f1 placeholder="Search">
</div>

<div class="col-xs-1">
    <span class="glyphicon glyphicon-unchecked" data-toggle="modal" data-target="#myModal1"></span>
  </div>
  <div class="col-xs-1">
    <span class="glyphicon glyphicon-envelope" data-toggle="modal" data-target="#myModal"></span>
  </div>
    <div class="col-xs-1">
     <span class="glyphicon glyphicon-paperclip" data-toggle="modal" data-target="#myModal2"></span>
   </div>
     <div class="col-sm-1">
      <span class="glyphicon glyphicon-link" data-toggle="modal" data-target="#myModal3"></span>
    </div>
      <div class="col-sm-1">
      <span class="glyphicon glyphicon-user"></span>
    </div>
    <div class="col-sm-1">
      <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Profile</a></li>
    <li><a href="#">Logout</a></li>
  </ul>
</div>
</div>

  </div>
</div>
  </div>
</div>

<div class="container">
  <div class="panel panel-default">
      <div class="panel-heading">Users</div>
      <div class="panel-body">
        <table class="table table-bordered">
    <thead>
      <tr>
        <th><span class="glyphicon glyphicon-chevron-down"></span>id</th>
        <th><span class="glyphicon glyphicon-chevron-down"></span>Username</th>
        <th><span class="glyphicon glyphicon-chevron-down"></span>Email</th>
        <th><span class="glyphicon glyphicon-chevron-down"></span>Firstname</th>
        <th><span class="glyphicon glyphicon-chevron-down"></span>Lastname</th>
        <th><span class="glyphicon glyphicon-chevron-down"></span>Active</th>
        <th><span class="glyphicon glyphicon-chevron-down"></span>Manage</th>
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>${l.a}</td>
     <td>${l.b}</td>
     <td>${l.c}</td>
     <td>${l.d}</td>
     <td>${l.e}</td>
     <td>${l.f}</td>
     <td><g:link controller="users" action="deleteUser">Deactivate</g:link></td>
    </tr>
    </tbody>
  </table>
      </div>
    </div>
</div>

</body>
</html>
