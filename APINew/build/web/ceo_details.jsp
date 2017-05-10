<%-- 
    Document   : ceo_details
    Created on : 05 May 2017, 6:09:27 PM
    Author     : Sindiso
--%>

<!DOCTYPE html>
<html>
<head>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.api.model.Company" %>
<% Company c = (Company)request.getAttribute("company"); %>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
<div class="main">
	
      <h2>Who runs the company?</h2>
      <form method="post"  action="${pageContext.request.contextPath}/UploadCeoController">
		      
		<div class="lable">
		        <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" name="name" placeholder="Enter Name" required="yes"></div>
                        <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" name="surname" placeholder="Enter Surname" required="yes"></div>
                <div class="clear"> </div>
		   </div>
		<div class="lable">
                    <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" name="id_number" placeholder="Passport/ID Number" required="yes"></div>
                    <input type="hidden"  name="company_id" value="<%= c.getCompany_id() %>" >
                <div class="clear"> </div>
		   </div>

		   <h3>We value your private information.<span class="term"><a href="terms.jsp">Privacy Policy</a></span></h3>
		   <div class="submit">
			  <input type="submit"  value="Create account" >
		   </div>
		   <div class="clear"> </div>
		</form>
		<!-----//end-main---->
		</div>
		 <!-----start-copyright---->
   		<div class="copy-right">
			<p><a href="register#">Payment Gateway</a></p> 
		</div>
				<!-----//end-copyright---->
</body>
</html>



