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
     <div class="alert alert-success" style="display: block">${flash.message}</div>
      </g:if>
<h2>Email Sender Form</h2>
<g:form controller="users" action="sendMail">
  <div class="fieldcontain">
  <g:textField name="address" placeholder="youremail@gmail.com"  />
  </div>
   <div class="fieldcontain">
   <g:textField name="subject" placeholder="Your Subject" />
   </div>
   <div class="fieldcontain">
   <g:textArea name="body" rows="5" cols="80" placeholder="Your message"/>
   </div>
   <fieldset>
    <g:submitButton name="send" value="Send" />
     </fieldset>
    </g:form>
  </body>
 </html>

