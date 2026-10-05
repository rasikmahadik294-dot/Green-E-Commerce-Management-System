<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alertmesaage.aspx.cs" Inherits="Green_Ecommerce_Marketplace.alertmesaage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>Green Ecommerce Marketplace</title>
    <style>
        .notification {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #333;
            color: #ffd700;
            padding: 20px;
            border-radius: 10px;
            max-width: 100%;
            text-align: center;
            width: 100%;
            height: 100%;
        }

a {
    color: #fff;
    text-decoration: none;
    transition: color 0.3s ease-in-out; /* Adding transition effect */
}

    a:hover {
        color: #ffd700; /* Changing color on hover */
    }

        .newStyle1 {
            font-size: 60px;
        }
        .newStyle2 {
            font-size: 35px;
        }
        .newStyle3 {
            font-size: 30px;
        }

        .newStyle4 {
            font-size: 35px;
        }
        .newStyle5 {
            font-size: 40px;
        }
        .newStyle6 {
            font-size: 35px;
        }

    </style>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    
   </head>
<body>

    

    <div class="notification">
        <h2>&nbsp;</h2>
        <h2>&nbsp;</h2>
        <h2>&nbsp;<span class="newStyle1">Please Log In</span></h2>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><span class="newStyle2">You need to log in to access this content.</span></p>
        
        <a href="registration.aspx" class="newStyle4">Register</a>
        <h1>OR</h1>
        <p class="newStyle5">please Login if you have already registered</p>
        <span class="newStyle6">
        <a href="login.aspx">Log In</a></span>

    </div>

    
</body>
</html>