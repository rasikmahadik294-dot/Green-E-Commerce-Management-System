<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderFinal.aspx.cs" Inherits="Green_Ecommerce_Marketplace.OrderFinal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Green Ecommerce Marketplace</title>
    <style>
        /* Reset some default styles */
body, h1, h2, h3, p, ul, li, blockquote {
    margin: 0;
    padding: 0;
}

        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
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
.cont {
            width: 100%;
            margin: 0 auto;
            height: 129px;
            color: #808080;
        }
h2 {
    text-align: center;
    margin: 20px 0;
}

input[type="text"], 
input[type="number"], 
select {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px; /* Rounded corners */
    transition: border-color 0.3s;
}

input[type="text"]:focus, 
input[type="number"]:focus, 
select:focus {
    border-color: #45DFB1; /* Highlight color */
}

button {
    background-color: #45DFB1;
    color: #fff;
    border: none;
    padding: 10px 15px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #36c09b; /* Darken on hover */
}
body {
    background: linear-gradient(to right, #f8f9fa, #e0f7fa); /* Light gradient background */
    font-family: 'Arial', sans-serif; /* Use Arial for consistency */
}

.ordercss {
    background-color: #ffffff; /* White background for the order container */
    border-radius: 15px; /* Rounded corners */
    padding: 20px 30px; /* Padding inside the container */
    width: 350px; /* Width for the form */
    margin: 50px auto; /* Center the form */
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.ordercss:hover {
    transform: translateY(-5px); /* Lift effect on hover */
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2); /* Deeper shadow on hover */
}

label {
    display: block; /* Make labels block-level elements */
    font-weight: 600; /* Bold text for labels */
    margin-bottom: 8px; /* Space between label and input */
    font-size: 16px; /* Increase font size for labels */
    color: #333; /* Darker text color */
}

asp\\:DropDownList, 
asp\\:TextBox {
    width: 100%; /* Full width for inputs and dropdown */
    padding: 10px 15px; /* Padding inside inputs */
    border: 2px solid #007bff; /* Blue border for input fields */
    border-radius: 5px; /* Rounded corners for inputs */
    font-size: 16px; /* Increase font size */
    margin-bottom: 15px; /* Space below inputs */
    box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle inner shadow */
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

asp\\:DropDownList:focus, 
asp\\:TextBox:focus {
    border-color: #0056b3; /* Darker blue border on focus */
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Blue shadow on focus */
    outline: none; /* Remove default outline */
}

asp\\:DropDownList option {
    font-size: 16px; /* Font size for dropdown options */
}

asp\\:RequiredFieldValidator {
    color: #ff4d4d; /* Red color for validation messages */
    font-size: 12px; /* Smaller font size for error messages */
    margin-top: -10px; /* Pull the error message closer to input */
}

.ordercss input[readonly] {
    background-color: #f5f5f5; /* Light gray background for read-only input */
    cursor: not-allowed; /* Disabled cursor for read-only field */
}

#OrderCom, 
#cancel {
    background: linear-gradient(45deg, #28a745, #218838); /* Green gradient for Order button */
    color: white; /* White text color */
    border: none; /* Remove border */
    border-radius: 6px; /* Rounded corners */
    padding: 12px 20px; /* Button padding */
    font-size: 16px; /* Button font size */
    cursor: pointer; /* Pointer cursor */
    margin-right: 10px; /* Space between buttons */
    transition: background 0.3s ease, transform 0.2s ease; /* Smooth transition */
    font-weight: bold; /* Bold button text */
}

#OrderCom:hover, 
#cancel:hover {
    background: linear-gradient(45deg, #218838, #1e7e34); /* Darker gradient on hover */
    transform: translateY(-2px); /* Lift effect on hover */
}

#cancel {
    background: linear-gradient(45deg, #dc3545, #c82333); /* Red gradient for Cancel button */
}

#ErrorLabel {
    color: #ff4d4d; /* Red text for error label */
    font-weight: bold; /* Bold text */
    font-size: 14px; /* Slightly larger error font */
    margin-top: 10px; /* Space above error label */
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
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }
        .newStyle2 {
            font-family: "Times New Roman", Times, serif;
            font-size: 60px;
            color: #000000;
        }
        .newStyle3 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
    </style>

</head>
<body>
   
    <div class="order">
        <form id="form1" runat="server">
            <div class="header">
                <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px;" />
                <h1><strong class="newStyle2">Green Ecommerce Marketplace</strong></h1>
                <h1><span class="newStyle3">Environment Friendly Shopping...!</span></h1>
            </div>
            <div class="cont">
                <ul class="nav-bar">
                    <li><a href="master1.aspx">Home</a></li>
                    <li><a href="productscategories.aspx">Products & category</a></li>
                    <li><a href="about.aspx">About Us</a></li>
                    <li><a href="contact.aspx">Contact Us</a></li>
                   
                </ul>
            </div>
            <h2>Place Order</h2>
           
            <div class="ordercss">
                <label for="oProduct">
                    Product:
                    <asp:DropDownList 
                        ID="proName" 
                        runat="server" 
                        AutoPostBack="True" 
                        OnSelectedIndexChanged="proName_SelectedIndexChanged">
                        <asp:ListItem Value="600">Bamboo stool - ₹600 Qty 1</asp:ListItem>
                        <asp:ListItem Value="700">Bamboo backrest - ₹700</asp:ListItem>
                        <asp:ListItem Value="900">Swing(brown) - ₹900</asp:ListItem>
                        <asp:ListItem Value="9000">3 seater bamboo sofa - ₹9000</asp:ListItem>
                        <asp:ListItem Value="12000">2 seater black sofa set - ₹12000</asp:ListItem>
                        <asp:ListItem Value="6000">Armchair for bedroom - ₹6000</asp:ListItem>
                        <asp:ListItem Value="200">Bamboo mouse - ₹200</asp:ListItem>
                        <asp:ListItem Value="850">Bamboo keyboard with mouse - ₹850</asp:ListItem>
                        <asp:ListItem Value="500">Wooden keyboard - ₹500</asp:ListItem>
                        <asp:ListItem Value="200">Bamboo sound amplifier - ₹200</asp:ListItem>
                        <asp:ListItem Value="300">Bamboo calculator - ₹300</asp:ListItem>
                        <asp:ListItem Value="900">Wooden bluetooth speaker - ₹900</asp:ListItem>
                        <asp:ListItem Value="120">Bamboo container - ₹120</asp:ListItem>
                        <asp:ListItem Value="350">Bamboo flask - ₹350</asp:ListItem>
                        <asp:ListItem Value="70">Bamboo glass - ₹70</asp:ListItem>
                        <asp:ListItem Value="200">Bamboo square basket - ₹200</asp:ListItem>
                        <asp:ListItem Value="10">Bamboo spoon - ₹10</asp:ListItem>
                        <asp:ListItem Value="30">Bottle cleaner - ₹30</asp:ListItem>
                        <asp:ListItem Value="60">Snack bowls - ₹60</asp:ListItem>
                        <asp:ListItem Value="80">Plates - ₹80</asp:ListItem>
                        <asp:ListItem Value="50">Mug - ₹50</asp:ListItem>
                        <asp:ListItem Value="20">Bamboo toothbrush - ₹20</asp:ListItem>
                        <asp:ListItem Value="50">Comb - ₹50</asp:ListItem>
                        <asp:ListItem Value="2">Straws - ₹2</asp:ListItem>
                    </asp:DropDownList>
                </label>
           
            <div>
                <label for="Qty">
                    Qty:
                    <asp:RequiredFieldValidator 
                        ID="QtyValidator" 
                        runat="server" 
                        ControlToValidate="qtyL" 
                        ErrorMessage="Quantity is required." 
                        ForeColor="#000333">
                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox 
                        ID="qtyL" 
                        runat="server" 
                        TextMode="Number" 
                        AutoPostBack="True" 
                        OnTextChanged="qtyL_TextChanged">
                    </asp:TextBox>
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" 
                        runat="server" 
                        ControlToValidate="qtyL" 
                        ErrorMessage="Please enter a valid non-negative number." 
                        ValidationExpression="^\d+$">
                    </asp:RegularExpressionValidator>
                </label>
            </div>
            <div>
                <label for="price">
                    Amount:
                    <asp:RequiredFieldValidator 
                        ID="priceValidator2" 
                        runat="server" 
                        ControlToValidate="amt" 
                        ErrorMessage="Amount is required." 
                        ForeColor="#000333">
                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox 
                        ID="amt" 
                        runat="server" 
                        ReadOnly="True" 
                        placeholder="In ₹..!!">
                    </asp:TextBox>
                </label>
            </div>
            <div>
                <asp:Button 
                    ID="OrderCom" 
                    runat="server" 
                    Text="Order" 
                    OnClick="OrderCom_Click" Height="50px" Width="119px" />
                <asp:Button 
                    ID="cancel" 
                    PostBackUrl="~/User/UProduct.aspx" 
                    runat="server" 
                    Text="Cancel" 
                    OnClick="cancel_Click1" Height="50px" Width="119px" />
                <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
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
    </div>
</body>
</html>

