$(document).on("change", "#menuType", function(){
  console.log("DACADAC")
  var menuType = $(this).val();
  console.log(menuType + "DSBACJ")
  if (menuType == "GroupItem"){
    $(".group").show();
  }
  else if(menuType == "Deal"){
    $(".deal").show();
  }
  else{
    $(".deal").hide();
    $(".group").hide();
  }

})