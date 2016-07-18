<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"> </script>
<script>



		$(document).ready(function(){
			$('#btn').click(function(){
				if($('#itemname').val()==''){
					$('#itemnameHelper').text('이름을 입력하세요');
				}else if($('#itemprice').val()==''){
					$('#itempriceHelper').text('가격을 입력하세요');
				}else if($('#itemrate').val()==''){
					$('#itemrateHelper').text('할인율을 입력하세요');
				}else{
					$('#idform').submit();
				}
			})
		})
</script>

</head>

<body>



	<form id="idform" action="./itemaddaction.jsp" method="post">
		<input id="itemname" name="itemname" type="text">이름
		<span id="itemnameHelper"></span> 
		<input id="itemprice" name="itemprice" type="text">가격
		<span id="itempriceHelper"></span>
		<input id="itemrate" name="itemrate" type="text">할인율
		<span id="itemrateHelper"></span>
		<input id="btn" type="button" value="입력"/>
	</form>
</body>
</html>