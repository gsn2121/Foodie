<%-- 
    Document   : NearbyRestaurants_Page
    Created on : Jun 16, 2018, 9:23:25 PM
    Author     : GSN Workspace
--%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource user="root" password="password" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/foodie1"/>
<sql:query var="res" sql="select * from restaurant_detail where restaurant_city='${sessionScope.getCity}'" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width,intial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="./css/NearbyRestaurants_Page.css">
      
   </head>
    <body>
        <header>
             <div class="container">
			            <div id="branding">
			                 <h1><span class="brandspan">Foodie</span> | The Hunger Killer</h1>
                        </div>
                        <nav>
                        <ul>
                            <li><a href="">Aditya tiwari<img src="  "></a></li>
                            <li><a href=".."><img id="locationimg" src="img/location-white.png" alt="Location" width="25" height="25" ></a></li>
                            <li><a><img id="cartimg" src="img/cart.png" alt="Cart" width="35" height="25" >Cart</a></li>
                        </ul>
                    </nav>
            </div>
        </header>
        <section id="slider">
            <div class="container">
                <figure>
                
                    <img src="./img/food-eating-potatoes-beer-8313.jpg" height="400px" width="1100px">
                    <img src="./img/images.jpg"height="400px" width="1100px">
                    <img src="./img/beach-exotic-holiday-248797.jpg"height="400px" width="110px">
                    <img src="./img/food-eating-potatoes-beer-8313.jpg"height="400px" width="1100px">
                    <img src="./img/">
                    <img src="IMG/pexels-photo-459059.jpeg">
                </figure>
            </div>
        </section> 
        <section id="search">
            <div class="container">
                <h1>Hungry..?? Order Here </h1>
                <form>
                    <input type="text"  name="aa"placeholder="Search for Resturants or Dishes">
                    <button type="submit"name="Search" >Search</button>
                </form>
            </div>
        </section>
        <section class="container section3">
            <aside class="aside-class">
                <div id="tabbedmenu">
                    <h1> RESTURANTS</h1>
                    <nav>
                        <ul>
                            <li><a href="  ">Popular</a></li>
                            <li><a href="  ">Vegetarian choices</a></li>
                            <li><a href="  ">Non Veg</a></li>        
                            <li><a href="  ">Fast Food</a></li>
                            <li><a href="  ">Chinese</a></li>
                            <li><a href="  ">Indian</a></li>
                            <li><a href="  ">Italian</a></li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <article class="cardboxcontainer">
               <core:forEach items="${res.rows}"  var="e">
                       <sql:query var="menu_query" sql="SELECT * FROM menu WHERE rid='${e.rid}'"/>
                        <sql:query var="res_name" sql="SELECT name FROM RESTAURANT WHERE rid='${e.rid}'"/>
                            
                            <core:set var="limit" value="${menu_query.rowCount}"/>
                                <core:forEach var="j" items="${menu_query.rows}">
                                <%! int i=0; %>
                                <% if(i>4){ %>
                                 <div class="cardsection">
                        
                                        <div class="card">
                                                <a href="Restaurant_detail.jsp?d_id=${j.dish_id}&rid=${e.rid}">
                                                    <img src="img/beach-exotic-holiday-248797.jpg" alt="Avatar">
                                                    <div class="container1">
                                                    <h4><b>${j.dish_name}</b></h4> 
                                                    <p>${res_name.rows[0].name}</p> 
                                                    <label>${j.price}</label>
                                                    </div>
                                                </a> 
                                                <% i=1;%>
                                        </div>
                                 </div><% } 
                                 else
                                        {%>
                                        <div class="card">
                                                <a href="Restaurant_detail.jsp?d_id=${j.dish_id}&rid=${e.rid}">
                                                    <img src="img/beach-exotic-holiday-248797.jpg" alt="Avatar">
                                                    <div class="container1">
                                                    <h4><b>${j.dish_name}</b></h4> 
                                                    <p>${res_name.rows[0].name}</p> 
                                                    <label>${j.price},</label>
                                                    </div>
                                                </a> 
                                                <% i++;%>
                                        </div>
                                        
                                        <%}%>
                                </core:forEach>
                             </core:forEach> 
               <div style="clear:both"></div>
                        </article>
                 
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
</html>
