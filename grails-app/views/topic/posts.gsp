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
<script>
$(document).ready(function(){
 $("#q").click(function(){
     $(this).toggleClass('glyphicon-heart-empty glyphicon-heart')
 });
 $("#w").click(function(){
      $(this).toggleClass('glyphicon-heart-empty glyphicon-heart')
  });
  $("#e").click(function(){
       $(this).toggleClass('glyphicon-heart-empty glyphicon-heart')
   });
   $("#r").click(function(){
        $(this).toggleClass('glyphicon-heart-empty glyphicon-heart')
    });
    $("#t").click(function(){
         $(this).toggleClass('glyphicon-heart-empty glyphicon-heart')
     });
});
</script>
<div class="container">
  <div class="panel panel-primary" style="background-color:lightblue";>
  <div class="panel-body">
   <div class="col-lg-3">
    <h3><u>Link Sharing</u></h3>
   </div>
  <div class="col-lg-9">
    <div class="col-sm-5">
  <input type="text" id=f1 placeholder="Search"><span class="glyphicon glyphicon-search" ></span>
</div>


    <div class="col-sm-1">
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
  <div class="col-lg-6">

    <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
          <div class="col-lg-3">
            <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
          </div>
          <div class="col-lg-9">
          <div class="row">
            <div class="col-sm-7">Uday Pratap Singh</div>
            <div class="col-sm-5" style="color:blue";>Grails</div>
          </div>
          <div class="row">
              <div class="col-sm-7">@uday</div>
                <div class="col-sm-5"></div>
          </div>
          <div class="row">
            <div class="col-sm-8"></div>
            <div class="col-sm-4">
              <span>
              <span class="glyphicon glyphicon-heart-empty" id="q" ></span>
              <span class="glyphicon glyphicon-heart-empty" id="w" ></span>
              <span class="glyphicon glyphicon-heart-empty" id="e"></span>
              <span class="glyphicon glyphicon-heart-empty" id="r"></span>
              <span class="glyphicon glyphicon-heart-empty" id="t"></span>
            </span>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <p>
          Bootstrap includes 260 glyphs from the Glyphicon Halflings set.
          Glyphicons Halflings<br/> are normally not available for free, but
          their creator has made them available for<br/> Bootstrap free of cost.
          As a thank you, you should include a link back<br/> to Glyphicons whenever possible.
        </p>
      </div>
          <div class="row">
            <div class="col-sm-6">
              <g:img dir="images" file="facebook.png"  class="img-rounded" width="20" height="20"/>
              <g:img dir="images" file="twitter.png"  class="img-rounded" width="20" height="20"/>
              <g:img dir="images" file="gmail.png"  class="img-rounded" width="20" height="20"/>
            </div>
            <div class="col-sm-6">
              <span>
               <a href="#"><u>Delete</u></a>
              <a href="#"><u>Edit</u></a>
              <a href="#"><u>Download</u></a>
                <a href="#"><u>View Site</u></a>
            </span>
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
              <div class="col-sm-3">
                 <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
              </div>
              <div class="col-sm-9">
              <div class="row" style="color:blue";>
               <div class="col-sm-8">Uday Pratap Singh</div>
               <div class="col-sm-4"><u>Grails</u></div>
              </div>
              <div class="row">
                <div class="col-xs-6">@uday</div>
                <div class="col-xs-3">Subscriptions</div>
                <div class="col-xs-3">Topics</div>
              </div>
              <div class="row">
                  <div class="col-xs-6"><a href="#"><u>Subscribe</u></a></div>
                <div class="col-xs-3"><span class="badge">50</span></div>
                <div class="col-xs-3"><span class="badge">30</span></div>
              </div>
      </div>
      </div>
      <hr>

      <div class="row">
      <div class="col-sm-3">
      <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
      </div>
      <div class="col-sm-9">
      <div class="row" style="color:blue";>
        <div class="col-sm-8">Uday Pratap Singh</div>
        <div class="col-sm-4"><u>Grails</u></div>
      </div>
      <div class="row">
      <div class="col-xs-6">@uday</div>
      <div class="col-xs-3">Subscriptions</div>
      <div class="col-xs-3">Topics</div>
      </div>
      <div class="row">
        <div class="col-xs-6"><a href="#"><u>Subscribe</u></a></div>
      <div class="col-xs-3"><span class="badge">50</span></div>
      <div class="col-xs-3"><span class="badge">30</span></div>
      </div>
      </div>
      </div>
      <div class="row">
      <div class="col-sm-7"></div>
      <div class="col-sm-3">
        <g:select from="${book}" name="Public"/>
      </div>
       <a href="#"><u>Edit</u></a>
       <a href="#"><u>Delete</u></a>
      </div>


      </div>
      </div>

  </div>
</div>
