<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Responsive Login Form</title>
	<link rel="stylesheet" href="css/styles_login.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style type="text/css">
	
		body {
				  background-image:url(img/user3.jpg);
				  background-attachment: fixed;
				  background-repeat: no-repeat;
				  background-size: cover;
             }
	
	</style>
</head>
<body>
<div class="container">
  <div class="sub-container">
    <div class="banner-img">
      <picture>
        <source media="(min-width: 501px)" srcset="img/6531.jpg">
        <source media="(max-width: 500px)" srcset="img/6531.jpg">
        <img src="images/deskbg.png" alt="baby">
      </picture>
    </div>
    
    <form action="adminlog" method="post">

            <div class="login-form">
              <div class="title">
                  Admin Login
              </div>
              <div class="input-fields">
                <label class="label">Username</label>
                <input type="text" class="input" name="username">
              </div>
              <div class="input-fields">
                <label class="label">Password</label>
                <input type="text" class="input" name="password">
              </div>
              <div class="forgot">
                <a href="#">create an account</a>
              </div>
              <div class="#">
               <input type="submit" name="submit" value="Login" class="btn">
              </div>
            </div>
  </form>

  </div>
</div>	
	
</body>
</html>