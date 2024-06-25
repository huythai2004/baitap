<%-- 
    Document   : add
    Created on : Jun 22, 2024, 12:43:22 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="add" method="post">
            Name: <input type="text" name="name" style="margin-left: 93px"/><br/>
            Date: <input type="date" name="date" style="margin-left: 101px"/>(yyyy-MM-dd)<br/>
            Gender: 
            <input type="radio" name="gender" value="1" style="margin-left: 90px"/>Male
            <input type="radio" name="gender" value="0"/>Female
            <br/>
            Departments:
            <select name="departID" style="margin-left: 50px">
                <c:forEach items="${requestScope.list}" var="l">
                    <option value="${l.did}">${l.dname}</option>
                </c:forEach>
            </select>
            <br/>
            <input type="submit" value="Save" style="margin-left: 140px"/>
        </form>
        
    </body>
</html>
