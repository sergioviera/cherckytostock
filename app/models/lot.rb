class Lot < ActiveRecord::Base
  attr_accessible :amount, :createDate, :currentAmount, :description, :expireDate
end
