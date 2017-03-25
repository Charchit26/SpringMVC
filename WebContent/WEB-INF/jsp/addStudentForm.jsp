<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ page session="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Add Student Details</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
	</head>
	<body>
		<h1>Welcome! Add Student Details.</h1><br />
		<h2>Student Information</h2>
       <form:form method="post" commandName="student">    
        <table >    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="studentName"  /></td>  
         </tr>    
         <tr>    
          <td>Salary :</td>    
          <td><form:input path="marks" /></td>  
         </tr>   
         <tr>    
          <td>Designation :</td>    
          <td><form:select path="department">
          	<form:option value="ECE">ECE</form:option>
          	<form:option value="CSE">CSE</form:option>
          	<form:option value="IT">IT</form:option>
          	<form:option value="MEC">MEC</form:option>
          </form:select></td>  
         </tr>   
         <tr>    
          <td colspan="2"><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    
	</body>
</html>