<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Electronics.aspx.cs" Inherits="Green_Ecommerce_Marketplace.Electronics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>Green Ecommerce Marketplace</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style>
        /* Reset some default styles */
body, h1, h2, p, ul, li {
    margin: 0;
    padding: 0;
            text-align: center;
        }

body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
    background-image: url('../image/admin.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-color:lavender;
}
.header {
            background-color: #45DFB1;
            color: #000000;
            text-align: center;
            padding: 10px 0;
            height: 203px;
            width: 100%;
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
.container {
            width: 100%;
            margin: 0 auto;
            height: 129px;
            color: #808080;
        }
.cont {
            width: 100%;
            margin: 0 auto;
            height: 129px;
            color: #CCCCCC;
        }
/* Product Section Styles */
.product-section {
    padding: 20px 0;
    text-align: center;
    
}

.centered-heading {
    text-align: center;
    font-family: Arial, serif;
    font-size: 2em;
    color: #8B4513;
    margin: 20px 0;
}

.photocontainer {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    
}

.product {
    background-color: #fff;
    width: 300px;
    margin: 20px;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s; 
    cursor:pointer;
}

    .product img {
        width: 100%;
        height: contain;
        border-radius: 5px;
    }

.product-info {
    padding: 10px 0;
}

    .product-info h3 {
        font-size: 1.2em;
        margin-bottom: 10px;
    }

    .product-info p {
        margin: 5px 0;
    }

        .product-info p:first-child {
            font-weight: bold;
        }

        .product-info p:last-child {
            font-style: italic;
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
        .auto-style1 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-size: 30px;
            color: #000000;
        }
        
        .newStyle2 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
        
        .newStyle3 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
        .newStyle4 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }
        
    </style>
   </head>
<body>
    <form id="form1" runat="server">
                  <div class="header">
            <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
            <h1 class="auto-style1">&nbsp;<strong class="newStyle4">Green Ecommerce Marketplace</strong></h1>
                <h1><span class="newStyle3">Environment Friendly Shopping...!</span></h1>
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
        <h1 class="newStyle2">Categories</h1>
                <div class="cont">
    <ul class="nav-bar">
    <li><a href="housefurniture.aspx">House Furnitures</a></li>
    <li><a href="Electronics.aspx">Electronics</a></li>
    <li><a href="Kitchen Essentials.aspx">Kitchen Essentials</a></li>
</ul>
</div>
 <div class="product-section">
            <h2 class="section-title">Electronics</h2>
            <div class="photocontainer">
                <div class="product">
    <img src="imgs/BambooSpeaker.jpeg" alt="Buttermilk" />
     <div class="product-info">
         <h3>Bamboo Sound Amplifier</h3>
         <p>₹200.00</p>
         <asp:Button ID="btnBuyproduct7" runat="server" Text="Buy" OnClick="btnBuyproduct7_Click"  />
     </div>
 </div>
                           <div class="product">
   <img src="imgs/bamboomouse.jpeg" alt="Ghee" />
    <div class="product-info">
        <h3>Bsmboo mouse</h3>
       <p>₹200.00</p>
        <asp:Button ID="btnBuyproduct9" runat="server" Text="Buy" OnClick="btnBuyproduct9_Click"  />
    </div>
</div>

                 <div class="product">
     <img src="imgs/calcutor.jpeg" alt="Ghee" />
     <div class="product-info">
         <h3>Bamboo Calculator</h3>
         <p>₹300.00</p>
         <asp:Button ID="btnBuyproduct11" runat="server" Text="Buy" OnClick="btnBuyproduct11_Click"  />
     </div>
 </div>
                <div class="product-section">
                <div class="product">
                    <img src="imgs/keyboard.jpeg" alt="Milk" />
                    <div class="product-info">
                        <h3>Keyboard</h3>
                        <p>₹500.00</p>
                        <asp:Button ID="btnBuyproduct12" runat="server" Text="Buy" OnClick="btnBuyproduct12_Click"   />
                    </div>
                </div>
            </div>

            
                <div class="product-section">
           <div class="product">
                   <img src="imgs/bluetoothspeaker.jpeg" alt="Cheese" />
                    <div class="product-info">
                        <h3>Bamboo Bluetooth Speaker</h3>
                      <p>₹900.00</p>
                        <asp:Button ID="btnBuyproduct13" runat="server" Text="Buy" OnClick="btnBuyproduct13_Click"   />
                    </div>
                </div>
     </div>
     
     <div class="product">
            <img src="imgs/big_keyboard_3.jpeg" alt="Buttermilk" />
           <div class="product-info">
               <h3>Bamboo Keyboard With Mouse</h3>
               <p>₹700.00</p>
               <asp:Button ID="btnBuyproduct14" runat="server" Text="Buy" OnClick="btnBuyproduct14_Click"  />
           </div>
       </div>
     </div>
           
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
    </form>
    
    </body>


</html>
