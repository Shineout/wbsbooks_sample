puts 'SETTING UP HOST LOGIN'

user1 = Spree::User.create! :title => 'Mr', :first_name => 'Oleg', :last_name => 'Krasnov', :email => 'oleg@evecco.com', :password => '123456', :password_confirmation => '123456', :phone => '123452345'

puts 'New user created: ' << user1.first_name

user2 = Spree::User.create! :title => 'Mr', :first_name => 'Dmitry', :last_name => 'Alekenko', :email => 'dmitry@evecco.com', :password => '123456', :password_confirmation => '123456', :phone => '123452345'

puts 'New user created: ' << user2.first_name

user2 = Spree::User.create! :title => 'Mrs', :first_name => 'Ekaterina', :last_name => 'Alekenko', :email => 'katya@evecco.com', :password => '123456', :password_confirmation => '123456', :phone => '123452345'

puts 'New user created: ' << user2.first_name

role = Spree::Role.find_or_create_by_name 'host'

user1.spree_roles << role
user1.save
user2.spree_roles << role
user2.save
user2.spree_roles << role
user2.save
