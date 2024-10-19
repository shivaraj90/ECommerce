<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to TA Shopping Online</title>
  <meta name="TaProject" content="ecommerce">
  <meta name="descrption" content="Store front for ecommerce site">
  <link rel="icon" href="./images/favicon-32x32.png">
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
  <header>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <ul class="nav navbar-nav">
          <li><a href="#">Contact Us on +91 40 66217777</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="loginCustomer"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Sign In</a></li>
          <li><a href="registerCustomer"><span class="glyphicon glyphicon-user"></span>&nbsp;Sign Up</a></li>
          <li><a href="Accountpage.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;My Account</a></li>
          <li><a href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a href="#"><i class="fa fa-envelope"></i></a></li>
        </ul>
      </div>
    </nav>

    <nav class="navbar navbar-expand-sm" style="padding-left: 30px;">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">
          <img src="./images/tadigital.jpg" alt="logo" style="width:110px;height:30px;">
        </a>
        <ul class="nav navbar-nav navbar-right">
          <li class="t"><a href="#">Electronics
              <i class="fa fa-caret-down"></i></a>
          </li>
          <li class="t"><a href="#">Men
              <i class="fa fa-caret-down"></i></a>
          </li>
          <li class="t"><a href="#">Women
              <i class="fa fa-caret-down"></i></a>
          </li>
          <li class="t"><a href="#">Baby & Kids
              <i class="fa fa-caret-down"></i></a>
          </li>
          <li class="t"><a href="#">Home & Furniture
              <i class="fa fa-caret-down"></i></a>
          </li>
        </ul>
      </div>
    </nav>

    <nav id="section2">
      <b class="n">Sign Up / Sign In</b>
      <a href="logout" style="float:right;padding-right:20px;">Logout</a>
      <a href="index.jsp" style="float:right;padding-right:5px;">Home&nbsp;&nbsp;&#47;&nbsp;</a>
    </nav>
  </header>
  <main>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-5">
          <hr>
          <h3>Sign Up</h3>
          <h5>Not Our Registered Customer Yet?</h5><br>
          <p>With registration with us new world of fashion, fantastic discounts and much more opensto you! The whole
            process will not take you more than a minute!</p><br>
          <p style="color:gray;">If you have any questions, please feel free to contact us, our customer service centre
            is working for you 24/7</p><br>
          <form action="registerCustomer" method="post">
            <b>Name</b><br>
            <input type="text" name="name" style="width:100%"><br><br>
            <b>Email</b><br>
            <input type="email" name="email" style="width:100%"><br><br>
            <b>Password</b><br>
            <input type="password" name="password" style="width:100%"><br><br>
            <div class="container-fluid" style="padding-left:180px;">
              <button type="submit"><i class="glyphicon glyphicon-user"></i>&nbsp;Register</button>
            </div><br><br>
          </form>
        
        
        <% 
           String registrationStatus = (String) session.getAttribute("REGISTRATIONSTATUS");
           if( registrationStatus != null) {
              if( registrationStatus.equals("SUCCESS")) {
        %>
             <br/>
             <div class="alert alert-success text-center" role="alert">
               Sign Up Successful.
             </div>
        <%
              } if( registrationStatus.equals("FAILURE")) {
        %>       
                  <br/>
                  <div class="alert alert-danger text-center" role="alert">
                    Sign Up Not Successful.
                  </div>
        <%
              }
              
		          session.setAttribute("REGISTRATIONSTATUS", "null");
           }
        %>
         </div>

        <div class="col-md-5">
          <hr>
          <h3>Sign In</h3>
          <h5>Already Our Customer?</h5><br>
          <p style="color:gray;">If you have any questions, please feel free to contact us, our customer service centre
            is working for you 24/7</p><br>
          <form action="loginCustomer" method="post">
            <b>Email</b><br>
            <input type="email" style="width:100%" name="email" id="email"><br><br>
            <b>Password</b><br>
            <input type="password" style="width:100%" name="password" id="password"><br><br>
            <div class="container-fluid" style="padding-left:210px;">
              <button type="submit"><i class="glyphicon glyphicon-log-in"></i>&nbsp;Login</button>
            </div><br>
            <div class="container-fluid" style="padding-left:190px;">
              <input type="checkbox"> Stay Signed In
            </div><br>
        
        </form>

        <% 
           String loginStatus = (String) session.getAttribute("LOGINSTATUS");
           if( loginStatus != null) {
              if( loginStatus.equals("FAILURE")) {
        %>
             <br/>
             <div class="alert alert-danger text-center" role="alert">
               Invalid Credentials.
             </div>     
                  <%  
                  session.setAttribute("LOGINSTATUS", "null");
                  %>
        <%
              }
           }
        %>

        </div>
      

           <div class="col-md-1"></div>
      </div>
    </div>
  </main>
  <footer>
    <div class="container-fluid">
      <div class="row" style="background-color: gray;">
        <div class="col-md-3" style="padding-left: 40px; padding-right:30px; color: white;">
          <h5><b>About Us</b></h5>
          <p>A global, full service digital transformation agency</p>
          <hr>
          <form>
            <h5><b>Join our Monthly Newsletter</b></h5>
            <div class="input-group">
              <div class="input-group-btn">
                <input type="text" class="form-control">
                <button class="btn btn-primary" type="submit">
                  <i class="glyphicon glyphicon-send"></i>
                </button>
              </div>
            </div>
          </form>
          <br>
        </div>
        <div class="col-md-3" style="padding-left: 40px; padding-right:30px; color: white;">
          <h5><b>Blog</b></h5>
          <img src="./images/b1.jpg" height="50px" width="50px" style="padding-bottom: 5px;"> Blog Post Name<br>
          <img src="./images/b2.jpg" height="50px" width="50px" style="padding-bottom: 5px;"> Blog Post Name<br>
          <img src="./images/b3.jpg" height="50px" width="50px" style="padding-bottom: 5px;"> Blog Post Name<br>
        </div>
        <div class="col-md-3" style="padding-left: 40px; padding-right:30px; color: white;">
          <h5><b>Contact Us</b></h5>
          <p>TechAspect Online Shopping<br>Plot No. 36, N Heights, 3rd Floor<br>Hitech City Phase 2,
            Madhapur<br>Hyderabad, Telangana - 500081<br>India</p>
          <button class="btn btn-success"><a href="Contactpage.html"> Go to Contact Page</a></button>
        </div>
        <div class="col-md-3" style="padding-left: 40px; padding-right:30px; padding-top:20px;color: white;">
          <img src="./images/b1.jpg" height="55px" width="50px" style="padding-right:5px;padding-bottom: 5px;">
          <img src="./images/b2.jpg" height="55px" width="50px" style="padding-right:5px;padding-bottom: 5px;">
          <img src="./images/b3.jpg" height="55px" width="50px" style="padding-right:5px;padding-bottom: 5px;"><br>
          <img src="./images/b1.jpg" height="55px" width="50px" style="padding-right:5px;">
          <img src="./images/b2.jpg" height="55px" width="50px" style="padding-right:5px;">
          <img src="./images/b3.jpg" height="55px" width="50px" style="padding-right:5px;"><br>
        </div>
      </div>
    </div>
    <div style="background-color:black; color: white;text-align:left;padding-left: 30px;">
      <br><br>© 2019. TechAspect Solutions Private Limited.<br><br><br>
    </div>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>

</html>