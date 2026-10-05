document.addEventListener('DOMContentLoaded', () => {
    const cartCountElement = document.getElementById('cart-count');
    const searchInput = document.getElementById('search-input');
    const searchButton = document.getElementById('search-button');
    const productGrid = document.getElementById('product-grid');

    let cartCount = 0;

    const updateCartCount = () => {
        cartCountElement.textContent = cartCount;
    };

    const addToCartButtons = document.querySelectorAll('.add-to-cart');

    addToCartButtons.forEach(button => {
        button.addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            button.textContent = 'Added!';
            setTimeout(() => {
                button.textContent = 'Add to Cart';
            }, 1000);
        });
    });

    const filterProducts = () => {
        const query = searchInput.value.toLowerCase();
        const productItems = document.querySelectorAll('.product-item');

        productItems.forEach(item => {
            const productName = item.getAttribute('data-product-name').toLowerCase();
            if (productName.includes(query)) {
                item.style.display = 'block';
            } else {
                item.style.display = 'none';
            }
        });
    };

    searchButton.addEventListener('click', filterProducts);

    searchInput.addEventListener('input', filterProducts);
});
