if (window.location.href == "https://2captcha.com/cabinet/mobile"){
	var sound = "http://david.guerrero.free.fr/Effects/WeaponHoming.wav";
  
	var id = document.getElementById("get_captcha");
  var a = 0;
	setInterval(function(){
	  var str = id.innerHTML;
	    
		if(str.indexOf("Your account has been put into the sleeping mode.") != -1){
			a=0;
		}else
		if(id.innerHTML == '<img src="/template/main/images/ajax-loader.gif">'){
			a=0;
		}else{
		  if(a==0){
  		  var audio = new Audio(sound);
  		  audio.loop = false;
  		  audio.play();
  		  a=1;
		  }
		}
		
	},1000);
}
