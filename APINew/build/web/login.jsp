<%-- 
    Document   : login
    Created on : 05 May 2017, 6:11:24 PM
    Author     : Sindiso
--%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>API Sign In</title>
    <!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700' rel='stylesheet' type='text/css'>	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>

  <body>

    <div class="container" style="background: url('img/money.jpg')">

      <form class="form-signin" method="post" action="${pageContext.request.contextPath}/LoginController">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <input type="button" class="btn btn-lg btn-primary btn-block" value="Sign In" type="submit">
      </form>
        <section>
            <div class="">
              <h4 >Not registered yet?</h4>
              <p>Welcome to our easy to use online payment gateway. The safest and easiest way to get you paid online without any hassle. Whether you are using it for business or your own personal use we are the online gateway to use. Discover how the convenience of online payments benefits your customers and transforms your business. Click register now and take your business into the future.</p> 
              <a href="register.jsp" class="btn btn-lg btn-primary btn-block" style="width: 200px; border-radius: 0px;">Register</a>
            </div>
            
        </section>

    </div> <!-- /container -->
    <div class="container">
        <div class="col-lg-4">
            <h4>Creative API</h4>
            <p>We have simplified linking your application to our API. Developers can use multiple languages to connect to our API. So no matter what language your application was built in we will be sure to make sure that you are in business quickly. </p>
            <a href="single.html" data-toggle="modal" data-target="#myModal1" >Show code examples<span class="glyphicon glyphicon glyphicon-arrow-right" aria-hidden="true"></span></a>
        </div>
        <div class="col-lg-4">
            <h4>Secure SSL</h4>
            <p>Our API does not store bank card details but instead encrypts them and sends them to their intended destination.</p>
            <a href="single.html" data-toggle="modal" data-target="#myModal1" >More details<span class="glyphicon glyphicon glyphicon-arrow-right" aria-hidden="true"></span></a>
        </div>
        <div class="col-lg-4">
            <h4>Friendly Support</h4>
	    <p>We have 24hr technical support to insure that if any problem should arise you are able to contact us and we are able as swift as possible because after all it is your money.</p>
            <a href="single.html" data-toggle="modal" data-target="#myModal1" >More details<span class="glyphicon glyphicon glyphicon-arrow-right" aria-hidden="true"></span></a>
        </div>
    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

