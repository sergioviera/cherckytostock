class Product < ActiveRecord::Base
  attr_accessible :description, :maximumAmount, :minimumAmount, :name
end
