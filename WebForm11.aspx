<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="Green_Ecommerce_Marketplace.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0px;
            padding:0px;
            box-sizing:border-box;
        }
        body{ 
            font-family:"raleway", sans-serif;
        }
        .sidebar{
            position:fixed;
            top:0px;
            left:0px;
            width:250px;
            height:100%;
            background:#111;
        }
        .sidebar .toggle-btn{
            position:absolute;
            top:10px;
            right:-40px;
            width:30px;
            height:30px;
            background:red;
        }
        .sidebar .toggle-btn span{
            position:absolute;
            width:100%;
            height:2px;
            background:#111;
            transform:translateY(-50%);
        }
        .sidebar .toggle-btn span:nth-child(1){
            top:10%;
        }
        .sidebar .toggle-btn span:nth-child(2){
    top:50%;
}
        .sidebar .toggle-btn span:nth-child(3){
    top:90%;
}
        .sidebar .links a{
            display:block;
            padding:15px 10px;
            text-orientation:none;
            color:#f5f5f5;
            cursor:pointer;
            border-bottom:1px solid #1b1b1b;
        }

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <div class="toggle-btn">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <div class="links">
                <a href="#">
                    <i class="fa fa-fome"></i>
                    category
                </a>
            </div>
        </div>
    </form>
</body>
</html>
