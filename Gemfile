CONFIG = :other
###########################################################################
case CONFIG
when :pqr
  GEMS_PATH = 'http://localhost/rubygems/'
  SPREE_PATH = 'file:///home/pqr/work/jaf/spree'
  SPREE_TRAVEL_PATH = 'file:///home/pqr/work/jaf/openjaf'
when :snc
  GEMS_PATH = 'file:///home/test/.rvm/gems/ruby-1.9.3-p392/bundler/gems/'
  SPREE_PATH = 'file:///media/Data/jaf/spree'
  SPREE_TRAVEL_PATH = 'file:///media/Data/jaf/spree_travel'
when :raul
  GEMS_PATH = 'http://localhost/rubygems/'
  SPREE_PATH = 'file:///home/raul/RubymineProjects/spree'
  SPREE_TRAVEL_PATH = 'file:///home/raul/RubymineProjects/openjaf'
else
  GEMS_PATH = 'http://rubygems.org'
  SPREE_PATH = 'https://github.com/spree'
  SPREE_TRAVEL_PATH = 'https://github.com/openjaf'
  PROTOCOL = :git
end
###########################################################################

source GEMS_PATH

#SPREE_GEMS
gem 'spree', '2.3.1'
gem 'wbsbooks_sample', github: 'wbslogistic/wbsbooks_sample', branch: 'master'