<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thank you.aspx.cs" Inherits="Green_Ecommerce_Marketplace.thank_you" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Green Ecommerce Marketplace</title>
    <style>
        /* Background styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container for the thank you message */
        .thankyou-container {
            background: white;
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 600px;
            width: 100%;
            animation: fadeIn 1.5s ease-in-out;
        }

        /* Headline styling */
        h1 {
            color: #4CAF50;
            font-size: 3em;
            margin-bottom: 20px;
            letter-spacing: 2px;
        }

        /* Paragraph text styling */
        p {
            font-size: 1.3em;
            margin-bottom: 25px;
            color: #555;
            line-height: 1.6;
        }

        /* Redirect message styling (button-like) */
        .redirect-message {
            background: linear-gradient(135deg, #4CAF50, #2e7d32);
            color: white;
            padding: 12px 30px;
            border-radius: 50px;
            font-size: 1.2em;
            text-transform: uppercase;
            letter-spacing: 1px;
            display: inline-block;
            margin-top: 20px;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        /* Hover effect for the redirect message */
        .redirect-message:hover {
            background: linear-gradient(135deg, #45a049, #1b5e20);
            transform: translateY(-3px);
            cursor: pointer;
        }

        /* Add subtle fading animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.8); }
            to { opacity: 1; transform: scale(1); }
        }

        /* Enhanced typography */
        h1, p {
            font-family: 'Poppins', sans-serif;
        }

        /* Responsive adjustments for mobile screens */
        @media (max-width: 768px) {
            .thankyou-container {
                padding: 30px;
            }

            h1 {
                font-size: 2.2em;
            }

            p {
                font-size: 1.1em;
            }

            .redirect-message {
                padding: 10px 25px;
                font-size: 1em;
            }
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
        }
        .newStyle2 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle3 {
            color: #CC0099;
        }
        .newStyle4 {
            color: #CC0099;
        }
    </style>

    <script type="text/javascript">
        function redirectAfterDelay() {
            setTimeout(function () {
                window.location.href = 'master1.aspx'; // Replace with your home page URL
            }, 10000); // 10 seconds
        }
    </script>
</head>
<body onload="redirectAfterDelay();">
    <form id="form1" runat="server">
        <div class="thankyou-container">
            <h1><span class="newStyle2">Thank You!</span></h1>
            <p class="newStyle1"><strong><span class="newStyle3">Dear Customer </span>,</strong></p>
            <p class="newStyle1"><strong>&nbsp;<span class="newStyle4">We sincerely appreciate your recent payment! Your transaction has been successfully processed.</span></strong></p>
            <p class="newStyle4"><strong>You will be redirected to the home page in 10 seconds.</strong></p>
            <div class="redirect-message">Redirecting to Home Page...</div>
        </div>
    </form>
</body>
</html>