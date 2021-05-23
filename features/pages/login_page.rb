module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, '.breadcrumb'
    element  :input_create_account_email, '#email_create'
    element  :btn_create_an_account, '#SubmitCreate'
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, '.lost_password'
    element  :btn_sign_in, '#SubmitLogin'
    element  :alert_message_authentication_failed, '.alert-danger'

    def sign_in(user)
      input_login_email.set(user[:email])
      input_login_password.set(user[:password])
      btn_sign_in.click
    end

    def expected_msg
      return find('.alert-danger')
    end
  end
end
