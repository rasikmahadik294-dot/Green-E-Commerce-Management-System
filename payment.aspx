 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="Green_Ecommerce_Marketplace.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Green Ecommerce Marketplace</title>
    <style>
/* General Styles */
body {
    font-family: Arial, sans-serif;
    background-color:lavender;
    margin: 0;
    padding: 0;
}

/* Header Styles */
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
/* Payment Form Styles */
.paymentcontainer {
    max-width: 600px;
    margin: 30px auto;
    padding: 20px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #333;
}

.form-group {
    margin-bottom: 15px;
}

label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
}

input.form-control {
    width: 95%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input.form-control:focus {
    border-color: #333;
    outline: none;
}

/* Button Styles */
#Div1 {
    text-align: center;
}

asp\:Button {
    background-color: #333;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

asp\:Button:hover {
    background-color: #555;
}

/* Footer Styles */
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
            color: #000000;
        }
        .newStyle4 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }
        .newStyle5 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
    </style>
</head>
<body>
       <form id="Form1" runat="server">
            <div class="header">
    <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
    <h1 class="auto-style1">&nbsp;<strong class="newStyle4">Green Ecommerce Marketplace</strong></h1>
        <h1><span class="newStyle5">Environment Friendly Shopping...!</span></h1>
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
    <div class="paymentcontainer">
        <h1>Make a Payment</h1>
        <div class="form-group">
            <label for="card-number">Card Number:<asp:RequiredFieldValidator ID="numberValidator" runat="server" ControlToValidate="PaymentCardNumber" ErrorMessage="Please Enter The Card Number." ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                </label>
            <asp:TextBox ID="PaymentCardNumber" runat="server" placeholder="Enter card number" CssClass="form-control" requiredpattern="[0-9]{12,19}" MaxLength="19"></asp:TextBox>
            <small>Enter a valid 12 to 19 digit card number.</small>
        </div>
        <div class="form-group">
            <label for="cardholder-name">Cardholder Name:<asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="PaymentHolder" ErrorMessage="Please Enter The Name." ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                </label>
            <asp:TextBox ID="PaymentHolder" runat="server" placeholder="Enter cardholder name" CssClass="form-control" ></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="expiry-date">Expiry Date:<asp:RequiredFieldValidator ID="dateValidator" runat="server" ControlToValidate="PaymentExpDate" ErrorMessage="Please Enter The Date." ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                </label>
            <asp:TextBox ID="PaymentExpDate" runat="server" placeholder="MM/YY" CssClass="form-control" requiredpattern="(0[1-9]|1[0-2])\/[0-9]{2}" MaxLength="5"></asp:TextBox>
            <small>Enter a valid expiry date in the format MM/YY.</small>
        </div>
        <div class="form-group">
            <label for="cvv">CVV:<asp:RequiredFieldValidator ID="ccvValidator" runat="server" ControlToValidate="PaymentCVV" ErrorMessage="Please Enter The CVV Number." ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                </label>
            <asp:TextBox ID="PaymentCVV" runat="server" placeholder="CVV" CssClass="form-control" requiredpattern="[0-9]{3,4}" MaxLength="4"></asp:TextBox>
            <small>Enter a valid 3 or 4 digit CVV.</small>
        </div>
        <div class="form-group">
            <label for="billing-address">Billing Address:<asp:RequiredFieldValidator ID="addressValidator" runat="server" ControlToValidate="PaymentBillAddress" ErrorMessage="Please Provide Address." ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                </label>
            <asp:TextBox ID="PaymentBillAddress" runat="server" TextMode="MultiLine" placeholder="Enter billing address" CssClass="form-control" ></asp:TextBox>
        </div>
        <div id="Div1" runat="server">
            <asp:Button ID="Pay" runat="server" Text="PAY NOW" BackColor="#333333" ForeColor="White" Height="50px"  Width="100px" OnClick="Pay_Click" />
        </div>
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
