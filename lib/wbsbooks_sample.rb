require 'spree_core'
require 'spree/sample'

module WbsbooksSample
  class Engine < Rails::Engine
    engine_name 'wbsbooks_sample'

    # Needs to be here so we can access it inside the tests
    def self.load_wbsbooks_samples
      Spree::WbsbooksSample.load_wbsbooks_sample("users")      
      Spree::WbsbooksSample.load_wbsbooks_sample("payment_methods")
      Spree::WbsbooksSample.load_wbsbooks_sample("zones")
      Spree::WbsbooksSample.load_wbsbooks_sample("shipping_categories")
      Spree::WbsbooksSample.load_wbsbooks_sample("shipping_methods")
      Spree::WbsbooksSample.load_wbsbooks_sample("tax_categories")
      Spree::WbsbooksSample.load_wbsbooks_sample("tax_rates")
      Spree::WbsbooksSample.load_wbsbooks_sample("properties")
      Spree::WbsbooksSample.load_wbsbooks_sample("products")
      Spree::WbsbooksSample.load_wbsbooks_sample("product_locations")
      Spree::WbsbooksSample.load_wbsbooks_sample("taxonomy_categories") 
      Spree::WbsbooksSample.load_wbsbooks_sample("taxon_category")
      Spree::WbsbooksSample.load_wbsbooks_sample("option_types")
      Spree::WbsbooksSample.load_wbsbooks_sample("option_values")
      Spree::WbsbooksSample.load_wbsbooks_sample("product_option_types")
      Spree::WbsbooksSample.load_wbsbooks_sample("product_properties")
      Spree::WbsbooksSample.load_wbsbooks_sample("variants")
      Spree::WbsbooksSample.load_wbsbooks_sample("stock")
      Spree::WbsbooksSample.load_wbsbooks_sample("assets")
      Spree::WbsbooksSample.load_wbsbooks_sample("addresses")
      Spree::WbsbooksSample.load_wbsbooks_sample("orders")
      Spree::WbsbooksSample.load_wbsbooks_sample("adjustments")
      Spree::WbsbooksSample.load_wbsbooks_sample("payments")
      Spree::WbsbooksSample.load_wbsbooks_sample("reviews")
    end
  end
end
