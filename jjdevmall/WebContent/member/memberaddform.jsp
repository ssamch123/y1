<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"> </script>
<script>
    $(document).ready(function(){
    	$('#submitbtn').click(function(){
    		if ($('#memberid').val()==''){
    			$('#memberidHelper').text('���̵� �Է��ϼ���');
    			
    		}else if ($('#memberpw').val()==''){
    			$('#memberpwHelper').text('����� �Է��ϼ���');
    		
    		}else if($('#membername').val()==''){
    			$('#membernameHelper').text('�̸��� �Է��ϼ���');
    			
    		}else if($('#membersex').val()==''){
    			$('#membersexHelper').text('������ �Է��ϼ���');
    		}else if($('#memberage').val()==''){
    			$('#memberageHelper').text('���̸� �Է��ϼ���');
    		}else{
    		$('#memberform').submit();
  	 		}	
    	});
    });



</script>

</head>
<body>
	
			
	 <form id="memberform" action="./memberaddaction.jsp" method="post"> 
	 <input id="memberid" type="text" name="memberid">���̵�
	 <span id="memberidHelper"></span>	
	 <input id="memberpw" type="text" name="memberpw">��й�ȣ
	 <span id="memberpwHelper"></span>
	<input id="membername" type="text"	name="membername">�̸�
	 <span id="membernameHelper"></span>
	 <input id="membersex" type="text" name="membersex">����
	  <span id="membersexHelper"></span>
	 <input id="memberage" type="text" name="memberage">����
	  <span id="memberageHelper"></span>
	 <input id="submitbtn" type="button" value="�Է�"/>
		
	
</form>
</body>
</html>