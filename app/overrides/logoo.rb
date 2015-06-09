Deface::Override.new(:virtual_path => "spree/shared/_header",
                     :replace => "[id='logo']",
                     :name => "logo",
                     :partial =>"logo_content")
