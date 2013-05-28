class Product < ActiveRecord::Base
  attr_accessible :description, :maximumAmount, :minimumAmount, :name
  has_many :log_events
end
