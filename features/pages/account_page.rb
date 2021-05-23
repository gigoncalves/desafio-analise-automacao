module Pages
    class AccountPage < SitePrism::Page
        set_url '/index.php?controller=my-account'

        element :logo, '.img-responsive'
        element :btn_contact_us, '#contact-link'
        element :btn_sign_out, '.logout'
        element :btn_customer_acc, '.account'
        element :input_search_form, '#search_query_top'
        element :button_search, '.button-search'
        element :btn_navi_page, '.navigation_page'
        element :btn_orders, '.icon-list-ol'
        element :btn_credit_slips, '.icon-ban-circle'
        element :btn_address, '.icon-building'
        element :btn_personal_info, '.icon-user'
        element :btn_wishlists, '.lnk_wishlist'
        element :btn_home, '.footer_links'

        def login_redirect
            return find('.navigation_page')
        end
    
        def customer_name
            return find('.account')
        end
    end
end
