
var str = $("#node").html();
$(".method1").on("tap","i",function(){
 var html = $(this).html();
 if(html == str){
 $(this).html("&#xe601;");
 }else{
 $(this).html("&#xe600;");
 }
});
$(".method2").on("tap","p",function(){
 var color = $(this).find("i").css("color");
 var number = $(this).find("span").html();
 if(color == "rgb(0, 0, 0)"){
 $(this).find("i").css("color","#f00");
 $(this).find("span").html(number*1+1);
 }else if(color == "rgb(255, 0, 0)"){
 $(this).find("i").css("color","#000");
 $(this).find("span").html(number*1-1);
 }
})