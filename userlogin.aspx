<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="Green_Ecommerce_Marketplace.WebForm17" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style>
        body {
            height: 663px;
            font-family: Arial, sans-serif;
            margin: 0;
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
.cont {
            width: 100%;
            margin: 0 auto;
            height: 129px;
            color: #808080;
        }


        .bg-img {
            background-image: url("imgs/login%20bg%20image.jpeg");
            min-height: 100vh;
            background-size: cover;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .container {
            position: relative;
            max-width: 300px;
            padding: 16px;
            background: rgba(255, 255, 255, 0.5);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            height: 257px;
        }

        h1 {
            text-align: start;
            color: lightgreen;
            -webkit-text-stroke: 1px black;
            margin-bottom: 20px;
        }

        b {
            color: black;
            font-size: 18px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid green;
            box-sizing: border-box;
        }

        .button {
            border-style: none;
            background-color: lightgreen;
            color: white;
            padding: 14px;
            cursor: pointer;
            width: 100%;
            border-radius: 10px;
            margin-top: 32px;
        }

        .button:hover {
            background-color: forestgreen;
            box-shadow: 0 0 5px #21fa05, 0 0 25px #21fa05, 0 0 50px #21fa05, 0 0 200px #21fa05;
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
            text-align: center;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-size: 30px;
            color: #000000;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
                          <div class="header">
            <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
            <h1 class="auto-style1">&nbsp;<strong class="newStyle3">Green Ecommerce Marketplace</strong></h1>
                <h1 class="auto-style2"><span class="newStyle1">Environment Friendly Shopping...!</span></h1>
        </div>
        <div class="cont">
    <ul class="nav-bar">
        <li><a href="master1.aspx">Home</a></li>
        <li><a href="productscategories.aspx">Products & category</a></li>
        <li><a href="about.aspx">About Us</a></li>
        <li><a href="contact.aspx">Contact Us</a></li>
        <li><a href="registration.aspx">Register</a></li>
        <li><a href="Login.aspx">Login</a></li>
    </ul>
</div>
        <div class="bg-img">
            <h1>User Login</h1>
            <div class="container">
                 <asp:Label ID="Label1" runat="server"></asp:Label>
                <b>
                 <br />
                 Username</b>
                <asp:TextBox ID="txtUsername" runat="server" Placeholder="Enter your username" required="true"></asp:TextBox>
                <b>Password</b>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Enter your password" required="true"></asp:TextBox>
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click"  />
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
            </form>
    
</body>
</html>
