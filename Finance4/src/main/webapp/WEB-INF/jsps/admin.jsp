<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Welcome to Admin Page
 <c:forEach items="${consumer}"  var="consumer">
	   <table>
        <tr>
            <th>C_NAME</th>
            <th>DOB</th>
            <th>EMAIL_ID</th>
            <th>PHONE_NO</th>
            <th>USER_NAME</th>
            <th>PASSWORD</th>
            <th>ADDRESS</th>
            <th>CARD_TYPE</th>
            <th>BANK_NAME</th>
            <th>AC_NO</th>
            <th>IFSC_CODE</th>
        </tr>
        <tr>
           <%--  <td>"<c:out value='${consumer.C_NAME}'/>"</td> --%>
           <td>${consumer.cname}</td>
            <td>${consumer.dob}</td>
            <td>${consumer.email}</td>
            <td>${consumer.phoneno}</td>
            <td>${consumer.username}</td>
            <td>${consumer.password}</td>
            <td> ${consumer.address}</td>
            <td>${consumer.cardtype}</td>
            <td>${consumer.bankname}</td>
            <td>${consumer.accno}</td>
            <td>${consumer.ifsccode}</td>
            <td><a  href="updatedata?id=${consumer.username}">Edit</a></td>
            <td><a href="deleteuser?id=${consumer.username}">Delete</a></td>
        </tr>
    </table>
      </c:forEach>

</body>
</html>