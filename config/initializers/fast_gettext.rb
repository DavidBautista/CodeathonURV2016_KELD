FastGettext.add_text_domain 'app', :path => 'locale'
FastGettext.default_available_locales = ['ca','es', 'en'] #all you want to allow
FastGettext.default_text_domain = 'app'
FastGettext.default_locale = :en