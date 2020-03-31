function xyz(){
$.ajax({
 url:"/topic/saveRating"
 type:"POST"
 data:""
 success:function(){
   alert("Resource added")
 };
});
}
$(document).ready(function(){
  $("#xyz").click(function(){

  });
});
