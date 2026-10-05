<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Green_Ecommerce_Marketplace.WebForm20" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Green Ecommerce Marketplace</title>
    <script src="https://kit.fontawesome.com/1165876da6.js" crossorigin="anonymous"></script>
    <style>
        body {
    font-family: Arial, sans-serif;
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

main {
    padding: 40px 20px; /* Increased padding for spacious layout */
    text-align: center;
}

.contact-form {
    max-width: 500px;
    margin: 0 auto;
    background: white; /* White background for form */
    border-radius: 8px; /* Rounded corners */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Shadow for depth */
    padding: 20px; /* Padding inside the form */
}

.form-control {
    width: 90%;
    padding: 12px; /* Increased padding for better touch targets */
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px; /* Rounded borders */
    transition: border 0.3s; /* Smooth transition */
}

.form-control:focus {
    border: 1px solid #4CAF50; /* Highlight border on focus */
    outline: none; /* Remove default outline */
}

.btn {
    background: #4CAF50;
    color: white;
    padding: 12px 20px; /* Increased padding for buttons */
    border: none;
    border-radius: 4px; /* Rounded button */
    cursor: pointer;
    transition: background 0.3s, transform 0.2s; /* Smooth transitions */
}

.btn:hover {
    background: #45a049;
    transform: scale(1.05); /* Slight zoom effect on hover */
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
                          <div class="header">
            <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
            <h1 class="auto-style1">&nbsp;<strong class="newStyle3">Green Ecommerce Marketplace</strong></h1>
                <h1><span class="newStyle1">Environment Friendly Shopping...!</span></h1>
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
            <h2>Contact Us</h2>
            <div class="contact-form">
                <asp:Label ID="lblMessage" runat="server" Text="" CssClass="message-label"></asp:Label>
                
                <asp:TextBox ID="txtFullName" runat="server" Placeholder="Full Name" CssClass="form-control"></asp:TextBox>
                <asp:TextBox ID="txtEmail" runat="server" Placeholder="Your Email" CssClass="form-control"></asp:TextBox>
                <asp:TextBox ID="txtContactNumber" runat="server" Placeholder="Contact Number" CssClass="form-control"></asp:TextBox>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Placeholder="Your Message" CssClass="form-control" Rows="4"></asp:TextBox>
                
                <asp:Button ID="btnSubmit" runat="server" Text="Send" CssClass="btn" OnClick="btnSubmit_Click1"  />
            </div>
        </main>            <footer>
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
