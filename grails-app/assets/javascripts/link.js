function shareLink(){
   $.ajax({
     url:"/topic/link",
     type:"POST",
     data:{"lnk":$("#ln").val(),"des":$("#dec").val(),"tpic1":$("#tp1").val()},
     success:function(data){
      console.log("Topic "+data.usery.name);
     },
     error:function(){
        alert("doc shared");
     }
   });
}
$(document).ready(function(){
   $("#lk").click(function(){
      shareLink();
   });
});
