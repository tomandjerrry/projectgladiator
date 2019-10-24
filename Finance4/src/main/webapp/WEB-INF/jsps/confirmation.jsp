<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
var x=${ProductInfo.prodCost}/3;
document.write(x);
</script>
</head>
<body>
Success
${ProductInfo.prodName}<br>
${ProductInfo.prodList}<br>
${ProductInfo.prodCost}<br>
</body>
</html>
