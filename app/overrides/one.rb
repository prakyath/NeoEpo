  Deface::Override.new(:virtual_path =>"spree/shared/_products",
                     :name =>"edit1",
                     :remove =>"[data-hook='products_search_results_heading_no_results_found']"
                         )



 Deface::Override.new(:virtual_path =>"spree/taxons/show",
                     :name =>"edit2",
                     :replace =>"[data-hook='taxon_products']",
                     :partial =>"spree/main" 
                       )                          

Deface::Override.new(:virtual_path =>"spree/home/index",
                     :name =>"edit2",
                     :replace =>"[data-hook='homepage_products']",
                     :partial =>"spree/home" 
                       )   

Deface::Override.new(:virtual_path =>"spree/shared/head",
                     :name =>"edit3",
                     :replace =>"title",
                     :text =>"neoepo" 
                       )   