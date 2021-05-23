module Sections
  class CartModal < SitePrism::Section
    element  :txt_shopping_cart, '.layer_cart_product'
    element  :txt_product_quantity, '.ajax_cart_product_txt'
    element  :txt_attributes, '#layer_cart_product_attributes'
    element  :btn_checkout, :xpath, '//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a'
  end  
end