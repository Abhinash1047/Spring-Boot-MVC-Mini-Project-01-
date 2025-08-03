<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
    <c:when test="${!empty data}">
        <h1 style="color: #1e90ff; text-align: center; font-family: Arial, sans-serif;">Employee Report</h1>
        <table style="margin: 0 auto; border-collapse: collapse; width: 80%; font-family: Arial, sans-serif;">
            <tr style="background-color: #f2f2f2;">
                <th style="border: 1px solid #ddd; padding: 10px;">EID</th>
                <th style="border: 1px solid #ddd; padding: 10px;">Name</th>
                <th style="border: 1px solid #ddd; padding: 10px;">Address</th>
                <th style="border: 1px solid #ddd; padding: 10px;">Salary</th>
                <th style="border: 1px solid #ddd; padding: 10px;">Designation</th>
                <th style="border: 1px solid #ddd; padding: 10px;">Edit</th>
                <th style="border: 1px solid #ddd; padding: 10px;">Delete</th>
            </tr>
            <c:forEach var="emp" items="${data}">
                <tr style="text-align: center;">
                    <td style="border: 1px solid #ddd; padding: 8px;">${emp.eid}</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">${emp.ename}</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">${emp.address}</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">${emp.salary}</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">${emp.designation}</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">
                        <a href="edit?id=${emp.eid}" style="color: green; text-decoration: none;">Edit</a>
                    </td>
                    <td style="border: 1px solid #ddd; padding: 8px;">
                        <a href="delete?id=${emp.eid}" onclick="return confirm('Do you want to delete the Employee')" style="color: red; text-decoration: none;">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:when>
    <c:otherwise>
        <h1 style="color: red; text-align: center; font-family: Arial, sans-serif;">Employee Not Found</h1>
    </c:otherwise>
</c:choose>

<h3 style="color: green; text-align: center; font-family: Arial, sans-serif;">${msg}</h3>

<div style="text-align: center; margin-top: 30px;">
    <a href="add" style="color: orange; text-decoration: none; font-size: 20px; font-family: Arial, sans-serif;">Register Employee Data</a>
</div>



<div style="text-align: center; margin-top: 15px;">
    <a href="./" style="color: blue; text-decoration: none; font-size: 20px; font-family: Arial, sans-serif;">Home</a>
</div>


