*** Variables ***
## Product page variables ##   
${SEARCH_BAR}    //input[@id='search_product']
${SEARCH_BUTTON}    //button[@id='submit_search']
${PRODUCT_CARD}    //div[@class="single-products"]
${PRODUCT_CARD_PRICE}    //body[1]/section[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/h2[1]
${PRODUCT_CARD_NAME}    //body[1]/section[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/p[1]
${ADD_TO_CART_BUTTON}    //a[@class="btn btn-default add-to-cart"]
${ADD_TO_CART_HOVER_BUTTON}    //body[1]/section[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/a[1]
${CONFIRMATION_MODAL_BUTTON}    //button[@class="btn btn-success close-modal btn-block"]
${PAGE_FOOTER}    //body/footer[@id='footer']