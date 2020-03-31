function shareDoc(){
   $.ajax({
     url:"/topic/doc",
     type:"POST",
     data:{"doc":$("#dc1").val(),"des1":$("#dec1").val(),"tpic2":$("#tp2").val()},
     success:function(data){
         console.log("Topic "+data.userx.name);
     },
     error:function(){
         alert("doc unshared");
     }
   });
}
$(document).ready(function(){
   $("#dc").click(function(){
      shareDoc();
   });
});