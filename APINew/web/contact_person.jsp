<%-- 
    Document   : contact_person
    Created on : 05 May 2017, 6:14:01 PM
    Author     : Sindiso
--%>

<!DOCTYPE html>
<html>
<head>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.api.model.Ceo" %>
<% Ceo c = (Ceo)request.getAttribute("ceo"); %>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
<div class="main">
	
      <h2>Who do we talk when we contact you?</h2>
      <form method="post"  action="${pageContext.request.contextPath}/UploadContactController">
		   <div class="lable">
		        <div class="col_1_of_2 span_1_of_2">	<select class="text">
                                <option value="Mr">Mr</option>
                                <option value="Mrs">Mrs</option>
                                <option value="Ms">Ms</option>
                                <option value="Dr">Dr</option>
                        </select></div>
               
                <div class="clear"> </div>
		   </div> 
		<div class="lable">
		        <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" name="name" placeholder="Enter Name" ></div>
                        <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" name="surname" placeholder="Enter Surname"></div>
                <div class="clear"> </div>
		   </div>
		<div class="lable">
                    <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" name="phone" placeholder="Phone" ></div>
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

