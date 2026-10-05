<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="Green_Ecommerce_Marketplace.WebForm19" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Ecommerce Marketplace</title>
     <script src="https://kit.fontawesome.com/1165876da6.js" crossorigin="anonymous"></script>
    <style>
        body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    margin: 0;
    padding: 0;
    background-color:lavender;
}

.header {
            background-color: #45DFB1;
            color: #000000;
            text-align: center;
            padding: 10px 0;
            height: 203px;
            width: 101%;
            font-family: "Times New Roman", Times, serif;
        }
.nav-bar a {
    color: #fff;
    text-decoration: none;
    margin: 0 10px;
}

    .nav-bar a:hover {
        text-decoration: underline;
    }

.nav-bar {
    display: flex;
    justify-content: center;
    list-style-type: none;
    padding: 0;
    margin: 0;
    background-color: rgba(0, 0, 0, 0.8)
}

    .nav-bar li {
        margin: 0 25px;
        height: 43px;
    }

    .nav-bar a {
        color: white;
        text-decoration: none;
        font-size: 18px;
        font-weight: bold;
        transition: color 0.3s;
    }

        .nav-bar a:hover {
            color: #ffddc1;
        }
                 .grid-container{
    display: grid;
    grid-template-columns:repeat(2,1fr);
    gap:60px;
    max-width:80%;
    margin:20px auto;
    align-items:center;
    border-bottom:1px solid var(--text-color);
    padding-bottom:20px;
    justify-items:center;
}
.grid-container img{
    width: 100%;
    max-width:400px;
    border:4px solid var(--text-color);
    border-radius:8px;
    align-items:center;
}
.grid-container .content{
    display:flex;
    align-items:flex-start;
    justify-content:center;
    gap:20px;
    flex-direction:column;
}.content h2,.content h3,.content p{
     color:var(--text-color);
 }
 .content .btn{
     font-size:1rem;
     font-weight:500;
     text-decoration:none;
     padding:0.5rem;
     border-radius:6px;
     color:fff;
     background-color:var(--btn-color);
     transition:0.3s;
 }
 .btn:hover{
     background-color:var(--btn-hover);
 }
 .content .social-icons{
     display:flex;
     gap:2rem;
     justify-items:center;
     align-items:center;
 }
 .social-icons a{
     font-size:1.7rem;
     color:var(--text-color);
     transition:0.3s;
 }
 .social-icons a:nth-child(1):hover{
     color:var(--fb-color);
 }
 .social-icons a:nth-child(2):hover{
     color:var(--insta-color);
 }
 @media screen and (max-width:980px){
     header{
         max-width:90%;
     }
     .grid-container{
         grid-template-columns:repeat(2,1fr);
         gap:60px;
         align-items:center;
         max-width:90%;
     }
     .grid-container img{
         max-width:100%;
         margin-top:20px;
     }
 }
 @media screen and (max-width:760px){
     header{
         max-width:100%;

     }
     .grid-container{
         display:block;
         margin:0 20px;
         max-width:90%;
     }
 }

footer {
    background: #333;
    color: white;
    text-align: center;
    padding: 10px 0;
    position: relative;
    bottom: 0;
    width: 100%;
}
.contain {
    width: 1140px;
    margin: auto;
    display: flex;
    justify-content: center;
}

.footer-content {
    width: 33.3%;
}

h3 {
    font-size: 30px;
    margin-bottom: 15px;
    text-align: center;
}

.footer-content p {
    width: 190px;
    margin: auto;
    padding: 7px;
}

.footer-content ul {
    text-align: center;
}

.list {
    padding: 0;
}

    .list li {
        width: auto;
        text-align: center;
        list-style-type: none;
        padding: 7px;
        position: relative;
    }

        .list li::before {
            content: '';
            position: absolute;
            transform: translate(-50%,-50%);
            left: 50%;
            top: 100%;
            width: 0;
            height: 2px;
            background: #f18930;
            transition-duration: .5s;
        }

        .list li:hover::before {
            width: 70px;
        }

.social-icons {
    text-align: center;
    padding: 0;
}

    .social-icons li {
        display: inline-block;
        text-align: center;
        padding: 5px;
    }

    .social-icons i {
        color: white;
        font-size: 25px;
    }

a {
    text-decoration: none;
}

    a:hover {
        color: #f18930;
    }

.social-icons i:hover {
    color: #f18930;
}

.bottom-bar {
    background: #f18930;
    text-align: center;
    padding: 10px 0;
    margin-top: 50px;
}

    .bottom-bar p {
        color: #343434;
        margin: 0;
        font-size: 16px;
        padding: 7px;
    }
        .newStyle3 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }

        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            text-decoration: underline;
        }

    </style>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
           <div class="header">
            <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
            <h1 class="auto-style1">&nbsp;<strong class="newStyle3">Green Ecommerce Marketplace</strong></h1>
                <h1>Environment Friendly Shopping...!</h1>
        </div>
        <div class="container">
    <ul class="nav-bar">
        <li><a href="master1.aspx">Home</a></li>
        <li><a href="productscategories.aspx">Products & category</a></li>
        <li><a href="about.aspx">About Us</a></li>
        <li><a href="contact.aspx">Contact Us</a></li>
        <li><a href="Daspx/DHome.aspx">Log Out</a></li>
    </ul>
</div>

    <main>
                <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        <div class="container">
           
                <h1 class="auto-style2">About Us</h1>

                <main class="grid-container">
                <div class="content">
                    <h2 class="newStyle8">&nbsp;Green Ecommerce Marketplace</h2>
                    <p>Green E-commerce is just like traditional ecommerce but with a sustainable twist. 
It’s all about coming up with fresh, creative ideas to reduce waste, minimize carbon emissions and make responsible choice in every step of the process from sourcing to manufacturing, shipping and delivery.
Green e-commerce means the sustainable and environment friendly techniques or strategies used in the online retail industry.
 It covers the whole supply chain from sourcing raw materials to packaging and distribution and goes beyond simple product offers.
My website consist of variety of products that are eco-friendly and made by waste material by recycling.
 You can select a product from the categories which have provide in my website and also can get all the information regarding to that product like prices, product id, brands etc. 
Also we give a chance for our customers to express their opinion through feedback where customers can give the suggestions about product and rate it
</p>
                    <a href="registration.aspx" class="btn">Register</a>
                    </div>
                
                <img src="imgs/aboutus.jpg" alt="picture" style="height: 354px; width: 720px" />
                </div>
       
    </main>

    <footer>
                    <div class="contain">
    <div class="footer-content">
        <h3>Contact Us</h3>
        <p>Email: rasikmahadik294@gmail.com</p>
        <p>Phone: 7756962210</p>
        <p>Address: Khed</p>
    </div>
    <div class="footer-content">
        <h3>Quick Links</h3>
        <ul class="list">
            <li><a href="master1.aspx">Home</a></li>
            <li><a href="productscategories.aspx">Product Categories</a></li>
            <li><a href="contact.aspx">Contact Us</a></li>
            <li><a href="about.aspx">About Us</a></li>
           
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
    <p>&copy; 2024-25 Green Ecommerce Marketplace. All rights reserved</p>
</div>
    </footer>
</body>
</html>