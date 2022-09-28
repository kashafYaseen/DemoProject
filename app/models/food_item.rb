class FoodItem < ApplicationRecord
  belongs_to :discount
  belongs_to :group_item
  has_many :order_items, as: :OrderItemable
  has_many :deal_items, as: :DealItemable
  has_many :food_item_options
  has_many :order_histories

  def name
    "#{item_name}"
  end

  def food_discount
    discount.disc_percent
  end

  def group_name
    group_item.groupItem_name
  end
end
