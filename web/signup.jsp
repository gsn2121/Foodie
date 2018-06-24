<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width,intial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="./css/signup.css">
      <script src="./js/signup.js"></script>
      <title>Foodie | Sign Up</title>
 
   </head>
    <body>
        <header>
             <div class="container">
			            <div id="branding">
			                 <h1><span class="brandspan">Foodie</span> | The Hunger Killer</h1>
                        </div>
                  <nav>
                      <ul>
                          <li><a href="index.html">Home</a></li>
                          <li><a href="login.html">Login</a></li>
                          
                        </ul>
                    </nav>
              </div>
        </header>
      <section  id="signupshowcase" style="display: block;">
        <div class="box container">
            <div class="titlediv">
                    <h2>Sign Up</h2>
            </div>
            <form action="SignUp" method="get" >
                <div class="box-content">
                    <div class="div-icon" id="emaildiv">
                        <span><img class="icon" src="./img/icons/email.png"/></span>
                        <input name="email" id="email" type="email" placeholder="Email" autofocus="true" required="required" onchange="ValidEmail()">
                        <span><img class="tick" id="tickE" src="img/tick.png"/></span>
                    </div>
                </div>
                <div class="box-content">
                    <div class="div-icon">
                        <span><img class="icon" src="./img/icons/avatar.png"/></span>
                        <input name="name"  id="name" type="text" required="required" placeholder="Name" autofocus="" >
                        <span><img class="tick" src=""/></span>
                    </div>
                </div>
                <div class="box-content">
                    <div class="div-icon" id="mobdiv">
                        <span><img class="icon" src="./img/icons/mob-icon.png"/></span>
                        <input name="mob" type="text" id="mob" placeholder="Mob No." autofocus="" required="required" onchange="ValidMob()"/>
                        <span><img class="tick" id="tickM" src=""/></span>
                    </div>
                 </div>
                 <div class="box-content">
                     <div class="div-icon" id="pass1div">
                        <span><img class="icon" src="./img/icons/key.png"/></span>
                         <input name="pass1" required="required" type="password" id="pass1" placeholder="Password" />
                         <span><img class="tick" id="tickP1" src=""/></span>
                     </div>
                 </div>
                <div class="box-content">
                    <div class="div-icon" id="pass2div">
                        <span><img class="icon" src="./img/icons/key.png"/></span>
                        <input class="" required="required" type="password" id="pass2" placeholder="Confirm Password" onchange="ValidPass('signup')">
                        <span><img class="tick" id="tickP2" src=""/></span>
                    </div>
                 </div>
                <div class="box-content1">
                    <input class="submit-button" type="submit" value="Sign Up" onclick="return flagcheck('signup');">
                </div>
            </form>
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
        <input type="hidden" id="alert" value="${sessionScope.alertMsg}"/>
    </body>
<script src="./js/gsn.js"></script>
</html>
