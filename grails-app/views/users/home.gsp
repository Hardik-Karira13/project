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
  <g:if test="${flash.message}">
     <div class="alert alert-success" style="display: block" id="def">${flash.message}</div>
      </g:if>
      <script>
      setTimeout(function() {
      $('#def').fadeOut('slow');
       }, 5000);
     </script>

       <g:if test="${flash.error}">
               <div class="alert alert-warning" style="display: block" id="abc">${flash.error}</div>
           </g:if>
           <script>
           setTimeout(function() {
               $('#abc').fadeOut('slow');
           }, 5000);
           </script>
   <g:render template="toppanel"/>

<div class="container">
  <div class="col-lg-7">
    <div class="panel panel-default">
        <div class="panel-heading" style="background-color:gray";>Recent shares</div>
        <div class="panel-body">
          <div class="col-lg-2">
            <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
          </div>
          <div class="col-lg-10">
           <g:each in= "${resource}">
          <div class="row">
            <div class="col-lg-7"><b>${it.resourceTopic.createdBy.userName}</b></div>
            <div class="col-lg-5" style="color:blue";>${it.resourceTopic.name}</div>
          </div>
          <div class="row">
            <p>${it.description}</p>
          </div>
          </g:each>
          <div class="row">
            <div class="col-lg-8">
              <g:img dir="images" file="facebook.png" class="img-rounded" width="20" height="20"/>
              <g:img dir="images" file="twitter.png" class="img-rounded" width="20" height="20"/>
              <g:img dir="images" file="gmail.png" class="img-rounded" width="20" height="20"/>
            </div>
            <div class="col-lg-4">
              <a href="#"><u>View Post</u></a>
            </div>
          </div>
          </div>
          <hr>


        <div class="col-lg-2">
          <g:img dir="images" file="person.jpeg" width="70" height="80"/>
        </div>
        <div class="col-lg-10">
        <div class="row">
          <div class="col-lg-7"><b></b></div>
          <div class="col-lg-5" style="color:blue";></div>
        </div>
        <div class="row">
          <p></p>
        </div>
        <div class="row">
          <div class="col-lg-8">
            <g:img dir="images" file="facebook.png" class="img-rounded" width="20" height="20"/>
            <g:img dir="images" file="twitter.png" class="img-rounded" width="20" height="20"/>
            <g:img dir="images" file="gmail.png" class="img-rounded" width="20" height="20"/>
          </div>
          <div class="col-lg-4">
            <a href="#"><u>View Post</u></a>
          </div>
        </div>
        </div>

   </div>
     </div>
   </div>
     <div class="col-lg-5">

    <g:form action='login'>
     <div class="panel panel-default">
            <div class="panel-heading" style="background-color:gray";>Login</div>
            <div class="panel-body">

       <div class="row">
       <div class="col-sm-4">
           <g:message code="lg.name" />
           </div>
           <div class="col-sm-8">
           <g:field type="name" name="email"/>
         </div>
    </div>
        <br />
      <div class="row">
        <div class="col-sm-4">
            <g:message code="pass.name" />
            </div>
            <div class="col-sm-8">
            <g:field type="password" name="psw"/>
          </div>
      </div>
       <br />

      <div class="row">
        <g:link action="mail">Forgot password</g:link>
          <div class="col-sm-6">
              <g:submitButton name="Login"/>
      </div>
      </div>

    </div>
    </div>
    </g:form>
    </div>
    </div>

  <div class="container">
    <div class="col-lg-7">
      <div class="panel panel-default">
          <div class="panel-heading well" style="background-color:gray";>
          <div class="col-sm-7">Top Posts</div>
          <div class="col-sm-3">
            <input type="text" placeholder="Today">
          </div>
      <div class="col-sm-2">
          <div class="dropdown">

      <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
      <span class="caret"></span></button>
      <ul class="dropdown-menu">
        <li><a href="#">Today</a></li>
        <li><a href="#">1 week</a></li>
        <li><a href="#">1 month</a></li>
        <li><a href="#">1 year</a></li>
      </ul>
    </div>
  </div>

  </div>
          <div class="panel-body" >


            <div class="col-lg-2">
              <g:img dir="images" file="person.jpeg" class="img-rounded" width="70" height="80"/>
            </div>
            <div class="col-lg-10">
            <div class="row">
              <div class="col-lg-7"><b>Uday Pratap Singh</b></div>
              <div class="col-lg-5" style="color:blue";>Grails</div>
            </div>
            <div class="row">
              <p> Bootstrap is the most popular HTML, CSS, and JavaScript framework for <br/>developing responsive, mobile-first websites.

                                 Bootstrap is completely free to download and use</p>
            </div>
            <div class="row">
              <div class="col-lg-8">
                <g:img dir="images" file="facebook.png" class="img-rounded" width="20" height="20"/>
                <g:img dir="images" file="twitter.png" class="img-rounded" width="20" height="20"/>
                <g:img dir="images" file="gmail.png" class="img-rounded" width="20" height="20"/>
              </div>
              <div class="col-lg-4">
                <a href="#"><u>View Post</u></a>
              </div>
            </div>
            </div>

          </div>
  </div>
    </div>
     <div class="col-lg-5">

     <g:form action='register'>
         <div class="panel panel-default">
             <div class="panel-heading" style="background-color:gray";>Register</div>
             <div class="panel-body">

        <div class="row">
        <div class="col-sm-4">
         <g:message code="f.name" />
         </div>
         <div class="col-sm-8">
         <g:field type="name" name="fname"/>
       </div>
       </div>
         <br />
       <div class="row">
        <div class="col-sm-4">
            <g:message code="l.name" />
            </div>
            <div class="col-sm-8">
            <g:field type="name" name="lname"/>
          </div>
       </div>
        <br />

        <div class="row">
          <div class="col-sm-4">
              <g:message code="e.name" />
              </div>
              <div class="col-sm-8">
              <g:field type="email" name="emil"/>
            </div>
        </div>
         <br />

         <div class="row">
          <div class="col-sm-4">
              <g:message code="u.name" />
              </div>
              <div class="col-sm-8">
              <g:field type="name" name="uname"/>
            </div>
         </div>
          <br/>

          <div class="row">
           <div class="col-sm-4">
               <g:message code="p.word" />
               </div>
               <div class="col-sm-8">
               <g:field type="password" name="psw1"/>
             </div>
          </div>
          <br />
           <div class="row">
             <div class="col-sm-4">
                 <g:message code="kp.word" />
                 </div>
                 <div class="col-sm-8">
                 <g:field type="password" name="cpsw"/>
               </div>
           </div>
            <br />

            <div class="row">
              <div class="col-sm-4">
                  <g:message code="p" />
                  </div>
                  <div class="col-sm-8">
                  <g:field type="file" name="phto"/>
                </div>

            </div>
             <br />


       <div class="row">
         <div class="col-sm-8"></div>
           <div class="col-sm-4">
           <g:submitButton name="Register"/>
       </div>
       </div>

             </div>
     </div>
     </g:form>
     </div>
     </div>

</body>
</html>