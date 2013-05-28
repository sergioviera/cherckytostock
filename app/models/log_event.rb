class LogEvent < ActiveRecord::Base
  attr_accessible :date, :description, :user, :product_id
  belongs_to :product
end
