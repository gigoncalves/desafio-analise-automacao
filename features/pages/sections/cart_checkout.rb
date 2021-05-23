module Sections
  class Checkout < SitePrism::Section
    element  :tbl_cart_summary, '#cart_summary'
    element  :tbl_qty_item, '.cart_quantity_input'
    element  :image, '.cart_product'
    element  :name, '.product-name'
    element  :price, '.cart_unit'
    element  :tbl_total_price, '.cart_total'
    element  :shipping, '.total_shipping'
    element  :total_price_cart, '#total_price'
    element  :cart_contains, '.heading-counter'
  end
end