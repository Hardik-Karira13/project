function sarega(){
$.ajax({
url:"topic/reading",
type:"POST",
success:function(){
alert("success")
},
error:function(){
alert("failure")
}
});
}
$(document).ready(function(){
   $("#read").click(function(){
     sarega();
   });
});