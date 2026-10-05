<%@ Page Language="C#" AutoEventWireup="true" CodeFile="master1.aspx.cs" Inherits="Green_Ecommerce_Marketplace.master1" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Green eCommerce Site</title>
    <script src="https://kit.fontawesome.com/1165876da6.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="masterpage.css" />
    <style>
        footer {
    background: #343434;
    padding-top: 50px;
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
    font-size: 28px;
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

.newStyle5 {
    color: #000000;
    font-size: large;
}


        .newStyle6 {
            font-size: 40px;
            color: #000000;
            font-family: "Times New Roman", Times, serif;
        }
        button{
            height:44px;
            width:130px;
        }
        .newStyle7 {
            color: #000000;
            font-family: "Times New Roman", Times, serif;
            font-size: 30px;
        }
        .newStyle8 {
            color: #000000;
        }
        .newStyle9 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }
        .newStyle10 {
            font-family: "Times New Roman", Times, serif;
            font-size: 30px;
            color: #000000;
        }
        .newStyle11 {
            font-family: "Times New Roman", Times, serif;
            font-size: 30px;
            color: #000000;
        }
        .newStyle12 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }
        .newStyle13 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
        <h1 class="newStyle7"><span class="newStyle12">Green Ecommerce Marketplace</span></h1>
        <p class="newStyle7"><span class="newStyle13">Environment Friendly Shopping...!</span></p>
    </header>
    
    <div class="container">
        <ul class="nav-bar">
            <li><a href="master1.aspx">Home</a></li>
            <li><a href="productscategories.aspx">Products & category</a></li>
            <li><a href="about.aspx">About Us</a></li>
            <li><a href="contact.aspx">Contact Us</a></li>
            <li><a href="Daspx/DHome.aspx">Log Out</a></li>
            
        </ul>
    </div>
    
    <div class="main-content">
        <div class="slider">
            <div class="slides">
                <div class="slide">
                    <img src="imgs/aboutus.jpg" alt="Slide 1" />
                </div>
                <div class="slide">
                    <img src="imgs/login%20bg%20image.jpeg" alt="Slide 2" />
                </div>
                <div class="slide">
                    <img src="imgs/Screenshot%202024-07-16%20233340.png" alt="Slide 3" />
                </div>
            </div>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        
        <h1 class="newStyle5"><strong>Products</strong></h1>
        <div class="featured-products">
            <div class="product">
                <img src="imgs/brush.jpeg" alt="Product 1" />
                <h2>Bamboo Toothbrush</h2>
                <p>₹20.00</p>
                <div class="product-buttons">
                    <asp:Button ID="btnBuyproduct22" runat="server" Text="Buy" CssClass="product-button" Height="46px" Width="100px" OnClick="btnBuyproduct22_Click"  />
                </div>
            </div>
            <div class="product">
                <img src="imgs/comb.jpeg" alt="Product 2" />
                <h2>Anti Hairfall Neem Wooden Comb</h2>
                <p>₹50.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct23" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct23_Click"  />
                </div>
            </div>
            <div class="product">
                <img src="imgs/spoons.jpeg" alt="Product 3" />
                <h2>Spoons (1pc)</h2>
                <p>₹10.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct18" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct18_Click"  />
                </div>
            </div>
            <div class="product">
                <img src="imgs/strawcleaner.jpeg" alt="Product 4" />
                <h2>Bamboo Straw Cleaner</h2>
                <p>₹49.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct17" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct17_Click"  />
                </div>
            </div>
            <div class="product">
                <img src="imgs/straws.jpeg" alt="Product 5" />
                <h2>Bamboo Straw (1pc)</h2>
                <p>₹2.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct24" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct24_Click"  />
                </div>
            </div>
            <div class="product">
                <img src="imgs/bamboomouse.jpeg" alt="Product 6" />
                <h2>Bamboo Mouse</h2>
                <p>₹200.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct9" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct9_Click"  />
                </div>
            </div>
            <div class="product">
                <img src="imgs/BambooSpeaker.jpeg" alt="Product 7" />
                <h2>Bamboo Sound Amplifier</h2>
                <p>₹200.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct7" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct7_Click"  />
                </div>
            </div>
                        <div class="product">
               <img src="imgs/BlacksofasetDayBed.jpeg" alt="Product 7" />
                <h2>2 seater Black Sofa Set</h2>
                <p>₹12000.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct2" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct2_Click"/>
                </div>
            </div>
                        <div class="product">
               <img src="imgs/bamboo_flask.jpg"alt="Product 7" />
                <h2>Bamboo Flask</h2>
                <p>₹350.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct8" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct8_Click"  />
                </div>
            </div>
                        <div class="product">
                <img src="imgs/sofa.jpeg" alt="Product 7" />
                <h2>3 Seater Bamboo sofa</h2>
                <p>₹9000.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct3" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct3_Click"  />
                </div>
            </div>
                        <div class="product">
                <img src="imgs/glass.jpeg"  alt="Product 7" />
                <h2>Bamboo Glass</h2>
                <p>₹70.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct10" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct10_Click"  />
                </div>
            </div>
                        <div class="product">
                            <img src="imgs/bluetoothspeaker.jpeg" alt="Product 7" />
                <h2>Bamboo Bluetooth Speaker</h2>
                <p>₹900.00</p>
                <div class="product-buttons">
<asp:Button ID="btnBuyproduct13" runat="server" Text="Buy" CssClass="product-button" OnClick="btnBuyproduct13_Click"  />
                </div>
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

    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let slides = document.querySelectorAll(".slide");
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            slides[slideIndex - 1].style.display = "block";
            setTimeout(showSlides, 3000);
        }

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function addToCart(productName) {
            alert(productName + ' has been added to your cart.');
        }

        function buyNow(productName) {
            alert('Redirecting to checkout for ' + productName);
        }
    </script>
    </form>
</body>
</html>
