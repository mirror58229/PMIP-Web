function check(){
      var password=document.getElementById('password').value;
      var repassword=document.getElementById('repassword').value;
      var message=document.getElementById('message');
      if(password==repassword){
        
      }
      else{
        message.style.display='block';

      }
    }
    function changeMessage() {
      // body...
      document.getElementById('message').style.display='none';
    }