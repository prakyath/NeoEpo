  Deface::Override.new(:virtual_path =>"spree/shared/_products",
                     :name =>"edit1",
                     :replace =>"[data-hook='products_search_results_heading_no_results_found']",
                    :text=>"<h3><%= link_to 'Ask for Details', contact_us_url %></h3>", 
                       )

