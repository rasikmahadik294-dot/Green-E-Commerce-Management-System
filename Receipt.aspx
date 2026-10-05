<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Receipt.aspx.cs" Inherits="Green_Ecommerce_Marketplace.Receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Green Ecommerce Marketplace</title>
    <style>
        .header{
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
        height: 43px;
            margin-right: 25px;
            margin-top: 0;
            margin-bottom: 0;
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
body {
    background: linear-gradient(to bottom right, #e6f9ff, #ffffff); /* Soft gradient background */
    font-family: 'Arial', sans-serif; /* Consistent font */
}

.receiptcss {
    background-color: #ffffff; /* White background for the receipt */
    border: none; /* Remove border for a cleaner look */
    border-radius: 15px; /* Rounded corners */
    padding: 30px; /* Space inside the box */
    width: 400px; /* Increased width for better layout */
    margin: 40px auto; /* Center the receipt on the page */
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2); /* More prominent shadow for depth */
    transition: transform 0.3s, box-shadow 0.3s; /* Animation on hover */
}

.receiptcss:hover {
    transform: translateY(-5px); /* Lift effect on hover */
    box-shadow: 0 12px 50px rgba(0, 0, 0, 0.3); /* Deeper shadow on hover */
}

h2 {
    text-align: center; /* Center the heading */
    color: #333; /* Darker text color for the heading */
    font-size: 28px; /* Larger font size for the heading */
    margin-bottom: 20px; /* Space below the heading */
    letter-spacing: 1.5px; /* Slight letter spacing */
    font-weight: 700; /* Bold heading */
    text-transform: uppercase; /* Uppercase for emphasis */
}

label, .receiptcss .aspLabel {
    font-weight: 600; /* Semi-bold labels for emphasis */
    margin-bottom: 10px; /* Space below labels */
    display: block; /* Make labels block elements */
    color: #555; /* Dark gray text for labels */
}

.receiptcss input[type="date"] {
    border: 2px solid #007bff; /* Blue border for the input field */
    border-radius: 5px; /* Rounded corners for the input */
    padding: 12px; /* Space inside the input */
    width: calc(100% - 24px); /* Full width minus padding */
    font-size: 16px; /* Font size for input */
    margin-bottom: 20px; /* Space below the input */
    transition: border-color 0.2s, box-shadow 0.2s; /* Transition effect */
}

.receiptcss input[type="date"]:focus {
    outline: none; /* Remove default outline */
    border-color: #0056b3; /* Darker blue border on focus */
    box-shadow: 0 0 8px rgba(0, 91, 219, 0.5); /* Shadow effect on focus */
}

button {
    background: linear-gradient(45deg, #28a745, #218838); /* Green gradient button */
    color: white; /* Button text color */
    border: none; /* Remove border */
    border-radius: 5px; /* Rounded corners */
    padding: 12px; /* Space inside the button */
    font-size: 18px; /* Font size for button */
    cursor: pointer; /* Change cursor on hover */
    width: 100%; /* Full width for the button */
    transition: background 0.3s, transform 0.2s; /* Smooth transitions */
    font-weight: 600; /* Bold text */
}

button:hover {
    background: linear-gradient(45deg, #218838, #1e7e34); /* Darker green gradient on hover */
    transform: translateY(-2px); /* Slight lift effect on hover */
}

.msg {
    margin-top: 15px; /* Space above the message */
    text-align: center; /* Center the message */
    background-color: #343a40; /* Dark background for the message */
    color: #FFD700; /* Gold text color */
    padding: 15px; /* Space inside the message box */
    border-radius: 5px; /* Rounded corners */
    border: 1px solid #666; /* Border for the message */
    font-weight: 600; /* Semi-bold text */
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2); /* Subtle shadow for the message box */
    transition: background-color 0.3s; /* Transition for background color */
}

.msg:hover {
    background-color: #2c2e33; /* Darker background on hover */
}

.footer{
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
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
            <h1 class="newStyle3">&nbsp;<strong class="newStyle3">Green Ecommerce Marketplace</strong></h1>
            <h1><span class="newStyle1">Environment Friendly Shopping...!</span></h1>
        </div>

        <!-- Navbar -->
        <div class="container">
            <ul class="nav-bar">
                <li><a href="master1.aspx">Home</a></li>
                <li><a href="productscategories.aspx">Products & category</a></li>
                <li><a href="about.aspx">About Us</a></li>
                <li><a href="contact.aspx">Contact Us</a></li>
                
            </ul>
        </div>                 
        <div class="receiptcss">
            <h2>Order Receipt</h2>
            Product Name: <asp:Label ID="TProName" runat="server"></asp:Label>
            <br />
            Qty: <asp:Label ID="TQty" runat="server"></asp:Label>
            <br />
            Amount: <asp:Label ID="TAmt" runat="server"></asp:Label>
            <br />
            Booking Date: 
            <asp:TextBox ID="BDate" runat="server" TextMode="Date" ReadOnly="True" Font-Names="arial" Width="200px"></asp:TextBox>
            <br />
            <asp:Button ID="pay" runat="server" Text="Confirm" OnClick="pay_Click1" />
            <br />
            <asp:Label ID="msg" runat="server" BackColor="White" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" EnableTheming="True" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Overline="False" Font-Size="Small" Font-Underline="True" ForeColor="Gold" Text="Please Take A Screenshot!!"></asp:Label>
        </div>
                   <div class="footer">
                       
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
    
        </div>            
    </form>
</body>
</html>