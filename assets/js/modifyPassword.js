//验证码倒计时
var countdown=60;
function settime(obj) { 
  if (countdown == 0 ) { 
      obj.removeAttribute("disabled"); 
      obj.value="免费获取验证码"; 
      countdown = 60; 
      return;
  }
  else  if(countdown > 0) { 

      obj.setAttribute("disabled", true); 
      obj.value="重新发送(" + countdown + ")"; 
          countdown--; 
          console.log(countdown);
      } 
  	setTimeout(function() {settime(obj) },1000)
//  		System.out.print(countdown);
}


// 密码一致性判断
function validate() {
    var pw1 = document.getElementById("pw1").value;
    var pw2 = document.getElementById("pw2").value;
    if(pw1 == pw2) {
        document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
        document.getElementById("submit").disabled = false;
    }
    else {
        document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
        document.getElementById("submit").disabled = true;
    }
}

