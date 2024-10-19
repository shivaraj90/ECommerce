<%@ page import="com.tadigital.ecommerce.customer.entity.User" %>

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
		     <%
			    User user = ( User ) session.getAttribute( "USERDETAILS" );
				if( user == null ) {
			 %>
          <li><a href="loginCustomer"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Sign In</a></li>
          <li><a href="registerCustomer"><span class="glyphicon glyphicon-user"></span>&nbsp;Sign Up</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Vendor Sign In</a></li>
          <li><a href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a href="#"><i class="fa fa-envelope"></i></a></li>
		  <%
				} else {
		  %>
		    <li class="nav-item dropdown">
			  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown">
			    Hi <%= user.getfirstName() + " " + user.getlastName() %>&nbsp;<i class="fa fa-caret-down"></i>
			 </a>
			 <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
			   <li><img src="images/<%= user.getProfilePicture() %>" class="img-fluid float-start" style="width:120px;"/></li>
			   <li><a class="dropdown-item" href="#" style="padding-left:10px;">My Profile</a></li>
			   <li><a class="dropdown-item" href="Accountpage.html" style="padding-left:10px;">Change Password</a></li>
			   <li><a class="dropdown-item" href="logout" style="padding-left:10px;">Logout</a></li>
			 </ul>
			</li>
		  <%
				}
		  %>
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
  </header>
  <main>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">

      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img src="./images/c1.jpg" alt="" style="width:100%;">
        </div>
        <div class="item">
          <img src="./images/c2.jpg" alt="" style="width:100%;">
        </div>
        <div class="item">
          <img src="./images/c3.jpg" alt="" style="width:100%;">
        </div>
        <div class="item">
          <img src="./images/c4.jpg" alt="" style="width:100%;">
        </div>

        <div class="item">
          <img src="./images/c5.jpg" alt="" style="width:100%;">
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>

      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>

      </a>
    </div>
    <br>

    <div class="c">
      Deals of the Day
      <button class="btn btn-primary btn-sm d">View All</button>
    </div>
    <div class="container-fluid">
      <div class="row">

        <div class="column">
          <div class="card">
            <img src="./images/mens.jpeg" alt="" style="width:90px;height:100px">
            <h5><b>Upto 60 + Extra 10% off</b></h5>
            <p>From &#8377;199</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/adidas.jpeg" alt="" style="width:100px;height:100px">
            <h5><b>Adidas, Reebok & Puma</b></h5>
            <p>Upto 50 + Extra 5% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/bag.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Laptop Bags</b></h5>
            <p>From &#8377;249</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/card.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Memory Cards...</b></h5>
            <p>Extra 5% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/timex.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Timex, MAxima...</b></h5>
            <p>Under &#8377;999 + Extra 7% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/skybag.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Skybags, American...</b></h5>
            <p>Under &#8377;999 + Extra 5% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
      </div>
    </div>
    <br>

    <div class="c">
      Featured Brands
      <button class="btn btn-primary btn-sm d">View All</button>
    </div>
    <br>
    <div class="container-fluid">
      <img src="./images/1.jpg" alt="" class="a">
      <img src="./images/2.jpg" alt="" class="a">
      <img src="./images/3.jpg" alt="" class="a">
      <img src="./images/4.jpg" alt="" class="a">
    </div>
    <br>
    <div class="c">
      Mobile New Launches
      <button class="btn btn-primary btn-sm d">View All</button>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="column">
          <div class="card">
            <img src="./images/redmi.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Redmi Note 6 Pro</b></h5>
            <p>12MP+5MP|20MP+2MP</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/realme.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Realme 2</b></h5>
            <p>13MP+2MP|8MP Camera</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/realme1.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Realme C1</b></h5>
            <p>13MP+2MP|5MP Camera</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/nokia.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Nokia 6.1 Plus</b></h5>
            <p>16MP+5MP Camera</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/lenovo.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Lenovo A5</b></h5>
            <p>16MP|6MP Camera</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/redmi note 5 pro.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Redmi Note 5 Pro</b></h5>
            <p>12MP+5MP Camera</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
      </div>
    </div>
    <br>
    <div class="c">
      Home Decor Range
      <button class="btn btn-primary btn-sm d">View All</button>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="column">
          <div class="card">
            <img src="./images/bottle.jpeg" alt="" style="width:90px;height:100px">
            <h5><b>Decorative Bottles</b></h5>
            <p>From &#8377;199</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/peacock.jpeg" alt="" style="width:100px;height:100px">
            <h5><b>Wall Clocks</b></h5>
            <p>Minimum 50% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/showpiece.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>FengShui Showpieces</b></h5>
            <p>Under &#8377;999</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/shelves.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Wall Shelves</b></h5>
            <p>Upto 80% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/laser.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Laser Lights</b></h5>
            <p>Upto 6% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/hookah.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Hookah & Bongs</b></h5>
            <p>Under &#8377;599</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
      </div>
    </div>
    <br>
    <div class="c">
      Fashion Accessories
      <button class="btn btn-primary btn-sm d">View All</button>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="column">
          <div class="card">
            <img src="./images/goggles.jpeg" alt="" style="width:90px;height:100px">
            <h5><b>Ray-Ban, Fastrack</b></h5>
            <p>20-60% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/belt.jpeg" alt="" style="width:100px;height:100px">
            <h5><b>Cross, Woodland...</b></h5>
            <p>Top Rated</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/casio.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Casio, Maxima...</b></h5>
            <p>Upto 50% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/casio or.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Casio, Fastrack...</b></h5>
            <p>10-50% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/fastrack2.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Titan, Fastrack...</b></h5>
            <p>20-80% off</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
        <div class="column">
          <div class="card">
            <img src="./images/fastrack1.jpeg" alt="" style="width:50px;height:100px">
            <h5><b>Fastrack</b></h5>
            <p>Under &#8377;999</p>
            <p><button class="btn btn-primary btn-sm">View</button></p>
          </div>
        </div>
      </div>
    </div>
    <br>

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
        <div class="col-md-3" style="padding-left:40px; padding-right:30px; color: white;">
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
      <br><br>© 2019 TechAspect Solutions Private Limited<br><br><br>
    </div>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>

</html>