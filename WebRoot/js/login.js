function toStudent(){
			var s=document.getElementById('student');
			var m=document.getElementById('manager');
			var sub=document.getElementById('sub');
			var managerId=document.getElementById('changeId');
			var message=document.getElementById('message');
			if(s.className=='fa fa-square-o'){
				s.className='fa fa-check-square-o';
				m.className='fa fa-square-o'
				sub.action='${pageContext.request.contextPath}/student/login.action';
				managerId.name='studentnumber';
			}
			else{
				s.className='fa fa-square-o';
				sub.action=" ";
				managerId.name='personId';
			}
			message.style.display='none';
			document.getElementById('empty').style.display='block';

		}
		function toManager(){
			var m=document.getElementById('manager');
			var s=document.getElementById('student');
			var sub=document.getElementById('sub');
			var managerId=document.getElementById('changeId');
			var message=document.getElementById('message');
			if(m.className=='fa fa-square-o'){
				m.className='fa fa-check-square-o';
				s.className='fa fa-square-o';
				sub.action='${pageContext.request.contextPath}/manager/login.action';
				managerId.name='accountnumber';
			}
			else{
				m.className='fa fa-square-o';
				sub.action="";
				managerId.name='personId';
			}
			message.style.display='none';
			document.getElementById('empty').style.display='block';

		}
		function check(){
			var m=document.getElementById('manager');
			var s=document.getElementById('student');
			var message=document.getElementById('message');
			if(m.className=='fa fa-square-o' && s.className=='fa fa-square-o'){
				message.style.display='block';
				document.getElementById('empty').style.display='none';
				return false;
			}
			return true;
		}