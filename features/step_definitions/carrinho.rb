Quando("adicionar ao carrinho") do
  @search_page.buttons.first.click_on('Add to cart')
end

Então("o produto deve ser adicionado corretamente") do
  expect(@search_page.modal.first.text).to have_content 'Product successfully added to your shopping cart'
  expect(@search_page.modal.first.text).to have_content 'There is 1 item in your cart.'
  expect(@search_page.modal.first.text).to have_content 'Orange, S'
end

Quando("clicar para seguir para o carrinho") do
  @search_page.modal.first.click_on('Proceed to checkout')
end

Então("o carrinho de compras exibido") do
  expect(@search_page.checkout.first).to have_image
  expect(@search_page.checkout.first).to have_name
  expect(@search_page.checkout.first.text).to have_content 'Color : Orange, Size : S'
  expect(@search_page.checkout.first.text).to have_content 'Your shopping cart contains: 1 Product'
end