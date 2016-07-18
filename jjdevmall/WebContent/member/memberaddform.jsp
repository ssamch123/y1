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
    			$('#memberidHelper').text('아이디를 입력하세요');
    			
    		}else if ($('#memberpw').val()==''){
    			$('#memberpwHelper').text('비번을 입력하세요');
    		
    		}else if($('#membername').val()==''){
    			$('#membernameHelper').text('이름을 입력하세요');
    			
    		}else if($('#membersex').val()==''){
    			$('#membersexHelper').text('성별을 입력하세요');
    		}else if($('#memberage').val()==''){
    			$('#memberageHelper').text('나이를 입력하세요');
    		}else{
    		$('#memberform').submit();
  	 		}	
    	});
    });



</script>

</head>
<body>
	
			
	 <form id="memberform" action="./memberaddaction.jsp" method="post"> 
	 <input id="memberid" type="text" name="memberid">아이디
	 <span id="memberidHelper"></span>	
	 <input id="memberpw" type="text" name="memberpw">비밀번호
	 <span id="memberpwHelper"></span>
	<input id="membername" type="text"	name="membername">이름
	 <span id="membernameHelper"></span>
	 <input id="membersex" type="text" name="membersex">성별
	  <span id="membersexHelper"></span>
	 <input id="memberage" type="text" name="memberage">나이
	  <span id="memberageHelper"></span>
	 <input id="submitbtn" type="button" value="입력"/>
		
	
</form>
</body>
</html>