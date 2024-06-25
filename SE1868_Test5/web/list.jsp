
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="did" value="${requestScope.departID}"/>
        <form action="list" method="post">
            Departments:
            <select name="departID" onchange="this.form.submit()">
                <option>Choose option</option>
                <c:forEach items="${requestScope.list2}" var="l2">
                    <option ${l2.did==did?'selected':''} value="${l2.did}">${l2.dname}</option>
                </c:forEach>
            </select>
        </form>
        Students:
        
        <table border="4px" style="width: 100%">
            <tr>
                <th>Name</th>
                <th>Born</th>
                <th>Gender</th>
                <th>Department</th>
            </tr>
            <c:forEach items="${requestScope.list1}" var="l1">
                <tr>
                    <td>${l1.sname}</td>
                    <td>${l1.sdob}</td>
                    <td>
                        <img src="${l1.sgender?'images/male.png':'images/female.png'}" 
                             width="20px" height="20px" />
                    </td>
                    <td>
                        <c:forEach items="${requestScope.list2}" var="l2">
                            <c:if test="${l1.did==l2.did}">
                                ${l2.dname}
                            </c:if>
                        </c:forEach>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
