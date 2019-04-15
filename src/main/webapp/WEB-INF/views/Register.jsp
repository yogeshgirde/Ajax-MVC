<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#ename").change(function() {

			$.ajax({
				url : 'check',
				data : {
					'en' : $("#ename").val()
				},
				success : function(resTxt) {
					$("#msg").text(resTxt);
					if (resTxt != '') {
						$("#ename").val("");
						$("#ename").focus();
					}
				}
			});

		});

	});
	</script>

</head>
<body>
	<h3>Welcome to AJAX CALL</h3>
	<form action="#" method="post">
		<pre>
Enter Name : <input type="text" name="ename" id="ename" /> <span
				id="msg"></span>
Enter Sal : <input type="text" name="esal"id="esal" />
Enter Dept : <input type="text" name="edept" />
<input type="submit" value="Register" />
</pre>
	</form>


</body>
</html>