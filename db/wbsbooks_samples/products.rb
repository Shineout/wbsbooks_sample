default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")

user_admin = Spree::User.where(:email => "spree@example.com")
user_oleg = Spree::User.where(:email => "oleg@evecco.com")
user_dmitry = Spree::User.where(:email => "dmitry@evecco.com")
user_katya = Spree::User.where(:email => "katya@evecco.com")


default_attrs = {   
  :available_on => Time.zone.now
}

products = [
  {
    :name => "Currently awaiting English Translation",
    :price => 15.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id, 
    :shipping_category => default_shipping_category
  },
  
]

products.each do |product_attrs|

  product = Spree::Product.create!(default_attrs.merge(product_attrs))
                   
  activity_detail = Spree::ActivityDetail.new
  activity_detail.duration = "#{3 + rand(5)} hours"
  activity_detail.itinerary = Faker::Lorem.paragraph
  activity_detail.cancellation = Faker::Lorem.paragraph    
  activity_detail.things_to_bring = Faker::Lorem.paragraph   
  activity_detail.pick_up = Faker::Lorem.paragraph   

  product.activity_detail = activity_detail

  product.save!
end

