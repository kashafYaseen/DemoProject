class GroupItem < ApplicationRecord
  has_many :menu_items, as: :MenuItemable
  has_many :food_items, :dependent => :destroy
  has_many :order_histories
  has_many :deal_items, as: :DealItemable

  def name
    "#{groupItem_name}"
  end

end
