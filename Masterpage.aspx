<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Masterpage.aspx.cs" Inherits="Green_Ecommerce_Marketplace.Masterpage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Ecommerce Marketplace</title>
    <script src="https://kit.fontawesome.com/1165876da6.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="masterpage.css" />
    <style>
       body {
    margin: 0;
    font-family: Arial, sans-serif;
    color:aliceblue;
}

.cont {
    display: flex; /* Use flexbox for layout */
}

.video-cont {
    width: 50%; /* Adjust the width as needed */
    position: relative;
    overflow: hidden; /* Ensure no overflow */
}

.video-cont video {
    width: 100%; /* Full width */
    height: auto; /* Maintain aspect ratio */
}

.conte{
    width: 50%; /* Adjust the width as needed */
    padding: 20px; /* Add some padding */
    background-color: #f9f9f9; /* Background color for content area */
}

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
            font-size: 40px;
            color: #000000;
        }
        .newStyle13 {
            font-family: "Times New Roman", Times, serif;
            font-size: 20px;
            color: #000000;
        }
        .newStyle14 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
        .auto-style1 {
            text-align: center;
        }
        .newStyle15 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 25px;
            color: #000000;
        }
        .newStyle16 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
        .newStyle17 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }
        .newStyle18 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
        .newStyle19 {
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
        <h1 class="newStyle7"><span class="newStyle17">Green Ecommerce Marketplace</span></h1>
        <p class="newStyle18"><span class="newStyle19">Environment Friendly Shopping...!</span></p>
    </header>
    
    <div class="container">
        <ul class="nav-bar">
            <li><a href="Daspx/DHome.aspx">Home</a></li>
            <li><a href="alertmesaage.aspx">Products & category</a></li>
            <li><a href="Daspx/DAboutus.aspx">About Us</a></li>
            <li><a href="Daspx/DContact.aspx">Contact Us</a></li>
            <li><a href="registration.aspx">Register</a></li>
            <li><a href="Login.aspx">Login</a></li>
        </ul>
    </div>
        <h1 class="auto-style1"><span class="newStyle16">Welcome To My GREEN ECOMMERCE MARKETPLACE</span></h1>
        <p class="auto-style1">&nbsp;</p>
        <p class="auto-style1">&nbsp;</p>
        <div class="cont">
            <div class="video-cont">
                <video autoplay loop muted>
                    <source src="imgs/Green%20(2).mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
            <div class="conte">
                <h1>&nbsp;</h1>
                <h1>&nbsp;</h1>
                <h1>&nbsp;</h1>
                <h1>&nbsp;</h1>
                <h1><span class="newStyle12">What does “green ecommerce” mean?</span>
 </h1>
                <h1><span class="newStyle13">Green ecommerce, otherwise known as sustainable ecommerce or eco-friendly ecommerce, refers to the concept of brands selling goods and services online while considering the environmental impact of doing business and working to reduce said impact. Brands that sell online can provide their customers with more sustainable and eco-friendly products, while evaluating and reducing their carbon footprint of doing business. </span>
 </h1>
                
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
                    <li><a href="alertmesaage.aspx">Product Categories</a></li>
                    <li><a href="contact.aspx">Contact Us</a></li>
                    <li><a href="about.aspx">About Us</a></li>
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
