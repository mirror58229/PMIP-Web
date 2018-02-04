//验证码倒计时
var countdown=60; 
var flag=0;

function settime(obj) { 
	yanzheng();
	abc(obj);
	function yanzheng(){
		if($("#email").val()=="")
		{
		 alert("邮箱不能为空");
		 flag=0;
		 return false;
		}
		var email=$("#email").val();
		if(!email.match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/))
		{
		 alert("格式不正确！请重新输入");
		 flag=0;
		 return false;
		}
		flag=1;
		//差一行邮箱正确就获取验证码的申请

	}
	function abc(obj){
      countdown=countdown*flag;
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
          
      } 
      setTimeout(function() {abc(obj) },1000)    
  }
  if(flag==1){
    // alert("345");
    var inputEmail=$("#email").val();
    obj.removeAttribute("disabled"); 
    obj.value="免费获取验证码"; 
    countdown = 60;
  }

}

