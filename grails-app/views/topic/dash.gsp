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
<asset:javascript src="link.js"/>
<asset:javascript src="document.js"/>
<asset:javascript src="reading.js"/>
</head>
<body>
  <g:if test="${flash.message}">
  <div class="alert alert-success" id="pqr">${flash.message}</div>
  </g:if>
  <script>
   setTimeout(function() {
      $('#pqr').fadeOut('slow');
    }, 5000);
    </script>
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
      <span class="glyphicon glyphicon-user" data-toggle="modal" data-target="#myModal4"></span>
    </div>
    <div class="col-sm-1">
      <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">${flash.success}
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Profile</a></li>
    <li><g:link controller="users" action="allUser">Users</g:link></li>
    <li><g:link controller="topic" action="topics">Topics</g:link></li>
    <li><g:link controller="topic" action="posts">Posts</g:link></li>
    <li><g:link action="logoff">Logout</g:link></li>
  </ul>
</div>
</div>

  </div>
</div>
  </div>
</div>



<div class="container">
  <div class="col-lg-5">
    <div class="panel panel-default">
        <div class="panel-body">
          <div class="col-sm-4">
            <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="90"/>
          </div>
          <div class="col-sm-8">
          <div class="row">
            <b><h4>${session.email}</h4></b>
          </div>
          <div class="row">
            <div class="col-xs-6">Subscriptions</div>
            <div class="col-xs-6">Topics</div>
          </div>
          <div class="row">
            <div class="col-xs-6"><span class="badge">${Subscription?.count()}</span></div>
            <div class="col-xs-6"><span class="badge">${Topic?.count()}</span></div>
          </div>
</div>
</div>
</div>
</div>
   <div class="col-lg-7">
       <div class="panel panel-default">
     <div class="panel-heading" style="background-color:gray";>Inbox</div>
    <div class="panel-body">
    <div class="row">
      <div class="col-sm-2">
        <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
      </div>
      <div class="col-sm-10">
      <div class="row">
        <div class="col-sm-7"><b></b></div>
        <div class="col-sm-5" style="color:blue";></div>
      </div>
      <div class="row">
        <p>Bootstrap is the most popular HTML, CSS, and JavaScript framework for <br/>developing responsive, mobile-first websites.

           Bootstrap is completely free to download and use</p>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <g:img dir="images" file="facebook.png" class="img-rounded" width="20" height="20"/>
          <g:img dir="images" file="twitter.png" class="img-rounded" width="20" height="20"/>
          <g:img dir="images" file="gmail.png" class="img-rounded" width="20" height="20"/>
        </div>
        <div class="col-sm-9">
          <span>
            <a href="#"><u>Download</u></a>
            <a href="#"><u>View Full Site</u></a>
              <a href="#"><u>Mark as Read</u></a>
            <a href="#"><u>View Post</u></a></span>
        </div>
      </div>
      </div>
     <hr>
     </div>
    <div class="row">
    <div class="col-sm-2">
      <g:img dir="images" file="person.jpeg" width="70" height="80"/>
    </div>
    <div class="col-sm-10">
    <div class="row">
      <div class="col-sm-7"><b>Uday Pratap Singh</b></div>
      <div class="col-sm-5" style="color:blue";>Grails</div>
    </div>
    <div class="row">
      <p>  Bootstrap is the most popular HTML, CSS, and JavaScript framework for <br/>developing responsive, mobile-first websites.

            Bootstrap is completely free to download and use</p>
    </div>
    <div class="row">
      <div class="col-sm-3">
        <g:img dir="images" file="facebook.png" class="img-rounded" width="20" height="20"/>
        <g:img dir="images" file="twitter.png" class="img-rounded" width="20" height="20"/>
        <g:img dir="images" file="gmail.png" class="img-rounded" width="20" height="20"/>
      </div>
      <div class="col-sm-9">
          <span><a href="#"><u>Download</u></a>
          <a href="#"><u>View Full Site</u></a>
            <a href="#" id="read"><u>Mark as Read</u></a>
        <a href="#"><u>View Post</u></a></span>
      </div>
    </div>
    </div>

</div>
   </div>
</div>
</div>
</div>


<div class="container">
  <div class="col-lg-6">
    <div class="panel panel-default">
        <div class="panel-heading well" style="background-color:gray";>
          <div class="col-sm-8">Subscriptions</div>
          <div class="col-sm-4">
            <a href="#">View all</a>
          </div>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="row">
          <div class="col-sm-3">
            <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
          </div>
          <div class="col-sm-9">
          <div class="row" style="color:blue";>
           <u>Grails</u>
          </div>
          <div class="row">
            <div class="col-xs-6">@uday</div>
            <div class="col-xs-3">Subscriptions</div>
            <div class="col-xs-3">Topics</div>
          </div>
          <div class="row">
              <div class="col-xs-6"><g:link action="deleteSubs" ><u>Unsubscribe</u></g:link></div>
            <div class="col-xs-3"><span class="badge">50</span></div>
            <div class="col-xs-3"><span class="badge">30</span></div>
          </div>
</div>
</div>
<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4"></div>
  <div class="col-sm-1"></div>
  <div class="col-sm-1"><span class="glyphicon glyphicon-envelope"></span></div>
  <div class="col-sm-1"> <span class="glyphicon glyphicon-file"></span></div>
  <div class="col-sm-1"> <span class="glyphicon glyphicon-trash"></span></div>
</div>
</div>
<hr>
<div class="row">

  <div class="row">
<div class="col-sm-3">
  <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
</div>
<div class="col-sm-9">
<div class="row" style="color:blue";>
 <u>Grails</u>
</div>
<div class="row">
  <div class="col-xs-6">@uday</div>
  <div class="col-xs-3">Subscriptions</div>
  <div class="col-xs-3">Topics</div>
</div>
<div class="row">
    <div class="col-xs-6"><g:link action="deleteSubs"><u>Unsubscribe</u></g:link></div>
  <div class="col-xs-3"><span class="badge">50</span></div>
  <div class="col-xs-3"><span class="badge">30</span></div>
</div>
</div>
</div>
<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4"></div>
  <div class="col-sm-1"></div>
  <div class="col-sm-1"><span class="glyphicon glyphicon-envelope"></span></div>
  <div class="col-sm-1"> <span class="glyphicon glyphicon-file"></span></div>
  <div class="col-sm-1"> <span class="glyphicon glyphicon-trash"></span></div>
</div>


</div>
</div>
</div>

  </div>
  <div class="col-lg-6">


    <div class="panel panel-default">
        <div class="panel-heading" style="background-color:gray";>
          Trending Topics
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="row">
          <div class="col-sm-3">
            <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
          </div>
          <div class="col-sm-9">
          <div class="row" style="color:blue";>
           <u>Grails</u>
          </div>
          <div class="row">
            <div class="col-xs-6">@uday</div>
            <div class="col-xs-3">Subscriptions</div>
            <div class="col-xs-3">Topics</div>
          </div>
          <div class="row">
              <div class="col-xs-6"><a href="#"><u>Unsubscribe</u></a></div>
            <div class="col-xs-3"><span class="badge">50</span></div>
            <div class="col-xs-3"><span class="badge">30</span></div>
          </div>
  </div>
  </div>
  <div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-4"></div>
    <div class="col-sm-1"></div>
    <div class="col-sm-1"><span class="glyphicon glyphicon-envelope"></span></div>
    <div class="col-sm-1"> <span class="glyphicon glyphicon-file"></span></div>
    <div class="col-sm-1"> <span class="glyphicon glyphicon-trash"></span></div>
  </div>
  </div>
  <hr>
  <div class="row">

  <div class="row">
  <div class="col-sm-3">
  <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
  </div>
  <div class="col-sm-9">
  <div class="row" style="color:blue";>
  <u>Grails</u>
  </div>
  <div class="row">
  <div class="col-xs-6">@uday</div>
  <div class="col-xs-3">Subscriptions</div>
  <div class="col-xs-3">Topics</div>
  </div>
  <div class="row">
    <div class="col-xs-6"><a href="#"><u>Unsubscribe</u></a></div>
  <div class="col-xs-3"><span class="badge">50</span></div>
  <div class="col-xs-3"><span class="badge">30</span></div>
  </div>
  </div>
  </div>
  <div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4"></div>
  <div class="col-sm-1"></div>
  <div class="col-sm-1"><span class="glyphicon glyphicon-envelope"></span></div>
  <div class="col-sm-1"> <span class="glyphicon glyphicon-file"></span></div>
  <div class="col-sm-1"> <span class="glyphicon glyphicon-trash"></span></div>
  </div>


  </div>
  </div>
  </div>


  </div>
</div>


<g:form action='invites'>
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">
<div class="modal-content">
    <div class="modal-header" style="background-color:gray";>Send invitation</div>
    <div class="modal-body">
      <div class="row">
      <div class="col-lg-4">
        <label >Email*</label>
      </div>
      <div class="col-lg-8">
        <input type="text" name="email1" placeholder="Email" />
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <label >Topic*</label>
      </div>
      <div class="col-lg-8">
      <g:select from="${topic}" name="topic1"/>
      </div>
</div>
<div class="row">
<div class="col-lg-8"></div>
<div class="col-lg-4">
   <g:submitButton name="Invite"/>
</div>
</div>
    </div>
</div>
</div>
</div>
</g:form>

<g:form action="saveTopic">
<div class="modal fade" id="myModal1" role="dialog">
  <div class="modal-dialog">


<div class="modal-content">
    <div class="modal-header" style="background-color:gray";>Create Topic</div>
    <div class="modal-body">
      <div class="row">
      <div class="col-lg-4">
        <label >Name*</label>
      </div>
      <div class="col-lg-8">
        <input type="text" name="nme" id="ne" placeholder="Name" />
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <label >Visibility*</label>
      </div>
      <div class="col-lg-8">
        <g:select from="${book}" name="visi" id="vis"/>
      </div>
</div>
<div class="row">
<div class="col-lg-8"></div>
<div class="col-lg-4">
  <g:submitButton name="Save"/>
</div>
</div>
    </div>
</div>
</div>
</div>
</g:form>

<div class="modal fade" id="myModal2" role="dialog">
  <div class="modal-dialog">


<div class="modal-content">
    <div class="modal-header" style="background-color:gray";>Share Link</div>
    <div class="modal-body">
      <div class="row">
      <div class="col-lg-4">
        <label >Link*</label>
      </div>
      <div class="col-lg-8">
        <input type="text" name="lnk" id="ln" placeholder="Link" />
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <label >Description*</label>
      </div>
      <div class="col-lg-8">
        <g:textArea type="text" name="des" id="dec" placeholder="Description" />
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <label >Topic*</label>
      </div>
      <div class="col-lg-8">
        <g:select from="${topic}" name="tpic1" id="tp1"/>
      </div>
  </div>
  <div class="row">
  <div class="col-lg-8"></div>
  <div class="col-lg-4">
  <button type="button" id="lk">Share</button>
  </div>
  </div>
    </div>
</div>
</div>
</div>



<div class="modal fade" id="myModal3" role="dialog">
  <div class="modal-dialog">


<div class="modal-content">
    <div class="modal-header" style="background-color:gray";>Share Document</div>
    <div class="modal-body">
      <div class="row">
      <div class="col-lg-4">
        <label >Document*</label>
      </div>
      <div class="col-lg-8">
        <input type="file" name="doc" id="dc1" placeholder="Document" />
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <label >Description*</label>
      </div>
      <div class="col-lg-8">
        <g:textArea type="text" name="des1" id="dec1" placeholder="Description" />
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <label >Topic*</label>
      </div>
      <div class="col-lg-8">
        <g:select from="${topic}" name="tpic2" id="tp2"/>
      </div>

</div>
<div class="row">
<div class="col-lg-8"></div>
<div class="col-lg-4">
     <button type="button" id="dc">Share</button>
</div>
</div>
    </div>
</div>
</div>
</div>


<div class="modal fade" id="myModal4" role="dialog">
  <div class="modal-dialog">

<div class="modal-content">
    <div class="modal-header" style="background-color:gray";>Picture</div>
    <div class="modal-body">
    <g:link controller="users" action="fetchImage">Download</g:link>
    </div>
</div>
</div>
</div>

</body>
</html>