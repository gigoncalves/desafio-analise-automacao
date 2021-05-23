module Sections
  class Cart < SitePrism::Section
    element  :image, '.img-responsive'
    element  :name, '.product-name'
    element  :price, ''
    element  :btn_add_to_cart, '.ajax_add_to_cart_button'
    element  :btn_more, '.lnk_view'
  end
end