<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Green_Ecommerce_Marketplace.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Green Ecommerce Marketplace</title>
    <style type="text/css">
        #form1 {
            text-align: center;
            height: 505px;
            background-image: url('imgs/loginbg..jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            cursor: pointer;
        }
        .newStyle1 {
            font-size: 70px;
        }
        .newStyle2 {
            font-size: 60px;
        }
        .newStyle3 {
            font-size: 55px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <br />
        <br />
        <br />
        <span class="newStyle3">Welcome <br />
        To
        <br />
        Green Ecommerce Marketplace...<br />
        </span>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="54px" OnClick="Button1_Click" Text="Admin Login" Width="245px"/>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="54px" OnClick="Button2_Click" Text="User Login" Width="244px" />
    </form>
</body>
</html>
