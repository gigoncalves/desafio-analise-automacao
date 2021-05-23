require_relative 'sections/product.rb'
require_relative 'sections/search_empty.rb'
require_relative 'sections/cart.rb'
require_relative 'sections/cart_modal.rb'
require_relative 'sections/cart_checkout.rb'

module Pages
  class SearchPage < SitePrism::Page
    set_url '/index.php'

    sections :products, Sections::Product, '.product-container'
    sections :empty, Sections::SearchEmpty, '.product-listing'
    sections :alert, Sections::SearchEmpty, '.alert-warning'
    sections :buttons, Sections::Cart, '.button-container'
    sections :modal, Sections::CartModal, '#layer_cart'
    sections :checkout, Sections::Checkout, '.columns-container'

  end
end
