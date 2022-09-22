class FoodItem < ApplicationRecord
  belongs_to :discount
  belongs_to :group_item
  has_many :order_items, as: :OrderItemable
  has_many :food_item_options
  has_many :order_histories
  has_many :deal_items, as: :DealItemable

  def food_discount
    discount.disc_percent
  end

  def group_name
    group_item.groupItem_name
  end
end
