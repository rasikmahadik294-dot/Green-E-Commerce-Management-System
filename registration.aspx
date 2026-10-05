<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Green_Ecommerce_Marketplace.registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
     <script src="https://kit.fontawesome.com/1165876da6.js" crossorigin="anonymous"></script>
    
   <style>
       body {
    font-family: 'Arial', sans-serif;
    background-color:lavender;
    margin: 0;
    padding: 0;
}

.header {
           background-color: #45DFB1;
           color: #000000;
           text-align: center;
           padding: 20px 0;
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
       .container {
           width: 100%;
           margin: 0 auto;
           height: 129px;
           color: #808080;
       }
.content {
    max-width: 400px;
    margin: 30px auto;
    padding: 20px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

label {
    margin: 10px 0 5px;
    font-weight: bold;
}

.input-field {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    transition: border 0.3s;
}

.input-field:focus {
    border-color: #4CAF50;
    outline: none;
}

.submit-button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    transition: background 0.3s;
}

.submit-button:hover {
    background-color: #45a049;
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
           font-weight: normal;
       }
       .newStyle1 {
           font-size: 60px;
       }
       .newStyle2 {
           font-family: "Times New Roman", Times, serif;
       }
       .newStyle3 {
           font-size: 60px;
           font-family: "Times New Roman", Times, serif;
       }

   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <img src="imgs/GREEN.jpg" style="float: left; height: 149px; width: 219px; margin-top: 0px;" />
            <h1 class="auto-style1">&nbsp;<strong class="newStyle3">Green Ecommerce Marketplace</strong></h1>
            <h1>Environment Friendly Shopping...!</h1>
        </div>
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
        <div class="content">
            <h2>Create an Account</h2>

            <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
            <asp:TextBox ID="FullNameTextBox" runat="server" CssClass="input-field"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="input-field"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>

            <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
            <asp:DropDownList ID="GenderDropDown" runat="server" CssClass="input-field">
                <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="RegisterButton" runat="server" Text="Register" CssClass="submit-button" OnClick="RegisterButton_Click"   />
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
                <li><a href="Daspx/DHome.aspx">Home</a></li>
                <li><a href="alertmesaage.aspx">Product Categories</></li>
                <li><a href="Daspx/DContact.aspx">Contact Us</a></li>
                <li><a href="Daspx/DAboutus.aspx">About Us</a></li>
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

