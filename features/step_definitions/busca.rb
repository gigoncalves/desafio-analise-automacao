Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Então("busca retorna vazia") do
  expect(@search_page.empty.first.text).to have_content '0 results have been found.'
  expect(@search_page.alert.first.text).to eql 'No results were found for your search "jeans"'
end