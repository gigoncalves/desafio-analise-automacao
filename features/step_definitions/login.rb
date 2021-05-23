Dado("que esteja na página de login") do
    @login_page.load
end

Quando("submete as seguintes credenciais:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    user = table.hashes.first
    @login_page.sign_in(user)
end

Então("deve ser redirecionado para página {string}") do |expected_page|
    expect(@account_page.login_redirect.text).to eql expected_page
end

Então("deve ver o seguinte nome de usuário: {string}") do |name|
    expect(@account_page.customer_name.text).to eql name
end

Então("deve ver a seguinte mensagem: {string}") do |message|
    expect(@login_page.expected_msg.text).to have_content message
end