<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width,intial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="./css/style(index).css">
      <title>Foodie | The Hunger killer</title>
   </head>
    <body onload="getLocation()">
        <header>
             <div class="container">
			            <div id="branding">
			                 <h1><span class="brandspan">Foodie</span> | The Hunger Killer</h1>
                        </div>
                        <nav>
                                <ul>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="signup.jsp">Signup</a></li>
                                </ul>
                        </nav>
            </div>
        </header>
        <section id="error">
            <div class="err_msg">
                <h3>${sessionScope.msg}</h3>
            </div>
        </section>
        <section id="showcase">
          <div class="container location">
              <div class="formclass">
                <form action="NearByRestaurant" method="get">
                    <input type="text" id="getCity" name="city" placeholder="Enter City" required="true">
                    <input type="text" id="getArea" name="area" placeholder="Enter Area">
                    <button type="submit" class="button1">Show Restaurants</button>
                </form>
              </div>

            </div>
        </section>
        <footer>
            <div class="footergsn container">
                <h3> Foodie&trade; 2018</h3>
                <p>All Copyrights Reserved</p>
            </div>
            <div class="footernav container">
                <div class="col">
                    <h3>Company</h3>
                    <nav>
                                <ul>
                                    <li><a href="login.html">About us</a></li>
                                    <li><a href="signup.html">Contact US</a></li>
                                    <li><a href="signup.html">Partner With Us</a></li>
                                </ul>
                    </nav>
                </div>
                <div class="col">
                    <h3>Legal</h3>
                    <nav>
                                <ul>
                                    <li><a href="login.html">Terms and Condition</a></li>
                                    <li><a href="signup.html">Refund & Cancellation</a></li>
                                    <li><a href="signup.html">Customer Care</a></li>
                                    <li><a href="signup.html">FAQ</a></li>
                                </ul>
                    </nav>
                
                </div>
                <div class="col">
                    <nav>
                                <ul>
                                    <li><a href="login.html"><img src="img/icons/fb.png" height="30px" width="30px" alt="FaceBook"></a></li>
                                    <li><a href="signup.html"><img src="img/icons/insta.png" alt="Instagram" height="30px" width="30px"></a></li>
                                    <li><a href="signup.html"><img src="img/icons/twitter.png" alt="Twitter" height="30px" width="30px"></a></li>
                                </ul>
                    </nav>
                
                </div>
            </div>
        </footer>
    </body>

<script src="./js/geo.js"></script>

</html>
