class OrderStatus < ApplicationRecord
  has_many :orders, :dependent => :destroy

  def name 
    "#{status}"
  end
end
