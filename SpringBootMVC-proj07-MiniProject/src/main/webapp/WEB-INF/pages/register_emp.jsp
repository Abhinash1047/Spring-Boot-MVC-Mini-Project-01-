<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<h1 style="color: blue;text-align: center;">Employee Data</h1>
<br>
<frm:form action="regi" method="POST" modelAttribute="emp" 
          style="display: inline-block; padding: 20px; border: 1px solid #ccc; border-radius: 10px; background-color: #f9f9f9; font-family: Arial, sans-serif;">


    <div style="margin-bottom: 10px;">
        <label style="display: inline-block; width: 100px;">Name:</label>
        <frm:input path="ename" style="padding: 5px; width: 200px;"/>
    </div>

    <div style="margin-bottom: 10px;">
        <label style="display: inline-block; width: 100px;">Address:</label>
        <frm:input path="address" style="padding: 5px; width: 200px;"/>
    </div>

    <div style="margin-bottom: 10px;">
        <label style="display: inline-block; width: 100px;">Salary:</label>
        <frm:input path="salary" style="padding: 5px; width: 200px;"/>
    </div>

    <div style="margin-bottom: 10px;">
        <label style="display: inline-block; width: 100px;">Designation:</label>
        <frm:input path="designation" style="padding: 5px; width: 200px;"/>
    </div>

    <div style="margin-top: 15px;">
        <input type="submit" value="Register" 
               style="padding: 7px 15px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; margin-right: 10px; cursor: pointer;" />
        <input type="reset" value="Cancel" 
               style="padding: 7px 15px; background-color: #f44336; color: white; border: none; border-radius: 4px; cursor: pointer;" />
    </div>
</frm:form>


