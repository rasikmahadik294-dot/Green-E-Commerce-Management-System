<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="Green_Ecommerce_Marketplace.WebForm9" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Category Page</title>
    <link rel="stylesheet" href="housefurniture.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>House Furniture</h1>
            <div id="cart-info">
                <span>Cart: <span id="cart-count">0</span> items</span>
            </div>
        </div>
    </header>
    <div class="search-bar">
                <input type="text" id="search-input" placeholder="Search products...">
                <button id="search-button">Search</button>
            </div>
    <main>
        <div class="container">
            <div class="product-grid">
                <div class="product-item">
                    <img src="imgs/stool.jpeg" alt="Product 1">
                    <div class="product-info">
                        <h2>Bamboo Stool</h2>
                        <p class="price">₹450.00</p>
                        <button class="add-to-cart" data-product-id="1">Add to Cart</button>
                    </div>
                </div>
                
                <div class="product-item">
                    <img src="imgs/stool2.jpeg" alt="Product 2">
                    <div class="product-info">
                        <h2>Bamboo Backrest Stool</h2>
                        <p class="price">₹550.00</p>
                        <button class="add-to-cart" data-product-id="2">Add to Cart</button>
                    </div>
                </div>
                <div class="product-item">
                    <img src="imgs/swing.jpeg" alt="Product 2">
    <div class="product-info">
        <h2>Swing (Brown)</h2>
        <p class="price">₹700.00</p>
        <button class="add-to-cart" data-product-id="3">Add to Cart</button>
    </div>
</div>
                <div class="product-item">
                    <img src="imgs/sofa.jpeg" alt="Product 2">
    <div class="product-info">
        <h2>3 Seater Bamboo Sofa</h2>
        <p class="price">₹9000.00</p>
        <button class="add-to-cart" data-product-id="4">Add to Cart</button>
    </div>
</div>
                <div class="product-item">
                    <img src="imgs/BlacksofasetDayBed.jpeg" alt="Product 2">
    <div class="product-info">
        <h2>2 Seater Black sofa set Day Bed</h2>
        <p class="price">₹12000.00</p>
        <button class="add-to-cart" data-product-id="5">Add to Cart</button>
    </div>
</div>
                <div class="product-item">
                    <img src="imgs/ArmchairforBedrooms.jpeg" alt="Product 2">
    <div class="product-info">
        <h2>IRA Armchair for Bed rooms</h2>
        <p class="price">₹6000.00</p>
        <button class="add-to-cart" data-product-id="6">Add to Cart</button>
    </div>
</div>
                
            </div>
        </div>
    </main>
    <script src="JavaScript.js"></script>
</body>
</html>
