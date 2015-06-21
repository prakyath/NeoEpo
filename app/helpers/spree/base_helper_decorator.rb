Spree::BaseHelper.module_eval do

  def seo_url(taxon)
    # return spree.nested_taxons_path(taxon.permalink)
    return main_app.categories_path(taxon.permalink)
  end

end