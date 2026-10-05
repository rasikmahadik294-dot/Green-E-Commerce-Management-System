<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Green_Ecommerce_Marketplace.WebForm4" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Page</title>
    <link href="contactpage.css" rel="stylesheet" />
    <link href="hf.css" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
        <header>
    <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
    <h1><span class="newStyle9">Green Ecommerce Marketplace</span></h1>
        <h3>Environment Friendly Shopping...!</h3>
</header>
<body>
   <section>
    <div class="container">
        <div class="contactInfo">
           <div>
            <h2>GET IN TOUCH</h2>
            <p>Feel free to contact us anytime. We will get back to you as soon as we can!</p>
            <ul class="info">
                <li>
                    <i class="bx bx-location-plus"></i>
                    <span>Ghanekhunt Tal.khed, Dist.Ratanagiri</span>
                </li>
                <li>
                    <i class="bx bx-envelope"></i>
                    <span>rasikmahadik17.com</span>
                </li>
                <li>
                    <i class="bx bx-phone"></i>
                    <span>085503793</span>
                </li>
            </ul>
            <ul class="social-media">  
                <li><i class="bx bxl-facebook"></i></li>
                <li><i class="bx bxl-instagram-alt"></i></li>
            </ul>
           </div> 
        </div>

        <div class="contactForm" runat="server">
           <h2>SAY SOMETHING</h2> 
           <div class="formBox">
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="inputBox w50" required="true" />
            <span>First Name</span>
            
            <asp:TextBox ID="txtLastName" runat="server" CssClass="inputBox w50" required="true" OnTextChanged="txtLastName_TextChanged" />
            <span>Last Name</span>

            <asp:TextBox ID="txtEmail" runat="server" CssClass="inputBox w50" TextMode="Email" required="true" />
            <span>Email Address</span>

            <asp:TextBox ID="txtMobile" runat="server" CssClass="inputBox w50" required="true" />
            <span>Mobile Number</span>

            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="inputBox w100" required="true" />
            <span>Write your message here...</span>

            <asp:Button ID="btnSend" runat="server" Text="SEND" CssClass="inputBox w100" />
           </div>
        </div>
    </div>
   </section>
                <footer>
    <div class="contain">
        <div class="footer-content">
            <h3>Contact Us</h3>
            <p>Email:rasikmahadik294@gmail.com</p>
            <p>Phone:7756962210</p>
            <p>Address:Khed</p>
        </div>
        <div class="footer-content">
            <h3>Quick Links</h3>
             <ul class="list">
                <li><a href="master1.aspx">Home</a></li>
                <li><a href="productcategory.aspx">Product Categories</a></li>
                <li><a href="contactpage.aspx">Contact Us</a></li>
                 <li><a href="aboutus.aspx">About Us</a></li>
                <li><a href="registration.aspx">Register</a></li>
                
             </ul>
        </div>
        <div class="footer-content">
            <h3>Follow Us</h3>
            <ul class="social-icons">
             <li><a href="https://www.facebook.com/rasik.mahadik.50?mibextid=ZbWKwL"><i class="fab fa-facebook"></i></a></li>
             <li><a href="https://www.instagram.com/__crazy_boy_rasik_0101?igsh=MTF3NmR6Mzh3ejQyaw=="><i class="fab fa-instagram"></i></a></li>
             </ul>
            </div>
    </div>
    <div class="bottom-bar">
        <p>&copy; 2024-25 Green Ecommerce Marketplace . All rights reserved</p>
    </div>
</footer>
</body>
</html>
