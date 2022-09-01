class Deal < ApplicationRecord
  has_many :menu_items, as: :MenuItemable
  has_many :order_items, as: :OrderItemable
  has_many :order_histories
  has_many :deal_items, :dependent => :destroy

  def name 
    "#{deal_name}"
  end
end
