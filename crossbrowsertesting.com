
if(location.href == "https://crossbrowsertesting.com/freetrial"){
  document.getElementsByTagName("input")[0].value = "NNN"+Math.floor((Math.random() * 10000000000) + 1)+"@gmail.com";
  document.getElementsByTagName("input")[1].value = "asd123123asd";
  $('#signup-form').submit();
}
if(location.href == "https://crossbrowsertesting.com/trial_started"){
  location.href = "https://app.crossbrowsertesting.com/livetests/run?url=http:%2F%2Flink.pe.hu%3Fa%3D&browser=Win8.1%7CChrome62x64%7CResponsive%20Mode";
}
////////////////////////////
var aa ="";
if(location.href == "https://app.crossbrowsertesting.com/trial_started"){
  location.href = "https://app.crossbrowsertesting.com/livetests/run?url=http:%2F%2Flink.pe.hu%3Fa%3D&browser=Win8.1%7CChrome62x64%7CResponsive%20Mode";
}
if(location.href == "https://app.crossbrowsertesting.com/livetests/run?url=http:%2F%2Flink.pe.hu%3Fa%3D&browser=Win8.1%7CChrome62x64%7CResponsive%20Mode"){
  setInterval(function(){
    if(document.getElementsByClassName("live-test-header")[0]!=undefined){
      document.getElementsByTagName("button")[1].click();
    }
    
  },5000);
}
if(location.href=="https://app.crossbrowsertesting.com/login"){
  location.href = "https://crossbrowsertesting.com/freetrial";
}
var time = 0;
setInterval(function(){
time++;
if(time >500){
  location.reload();
}
  if(document.getElementsByTagName("strong")[1].innerHTML == "0"){
    document.getElementsByTagName("a")[17].click();
  }
  if(document.getElementsByClassName("modal-footer")[0].innerHTML!=undefined){
 
    location.href = "https://app.crossbrowsertesting.com/livetests/run?url=http:%2F%2Flink.pe.hu%3Fa%3D&browser=Win8.1%7CChrome62x64%7CResponsive%20Mode";
  }
},1000)
