<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<h1 style="color: orange; text-align: center; font-family: Arial, sans-serif;">Update Employee Data</h1>

<frm:form modelAttribute="emp" action="updatedata" 
          style="width: 40%; margin: 0 auto; padding: 20px; border: 1px solid #ccc; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1); background-color: #f9f9f9; font-family: Arial, sans-serif;">

    <label style="display: block; margin-bottom: 5px; font-weight: bold;">Employee Id</label>
    <frm:input path="eid" readonly="true" 
               style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;" />

    <label style="display: block; margin-bottom: 5px; font-weight: bold;">Employee Name</label>
    <frm:input path="ename" 
               style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;" />

    <label style="display: block; margin-bottom: 5px; font-weight: bold;">Employee Address</label>
    <frm:input path="address" 
               style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;" />

    <label style="display: block; margin-bottom: 5px; font-weight: bold;">Employee Salary</label>
    <frm:input path="salary" 
               style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;" />

    <label style="display: block; margin-bottom: 5px; font-weight: bold;">Employee Designation</label>
    <frm:input path="designation" 
               style="width: 100%; padding: 8px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px;" />

    <input type="submit" value="Update" 
           style="padding: 10px 20px; background-color: #28a745; color: white; border: none; border-radius: 5px; cursor: pointer; margin-right: 10px;" />

    <input type="reset" value="Cancel" 
           style="padding: 10px 20px; background-color: #dc3545; color: white; border: none; border-radius: 5px; cursor: pointer;" />

</frm:form>
