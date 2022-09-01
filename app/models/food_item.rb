class FoodItem < ApplicationRecord
  belongs_to :discount
  has_many :order_items, as: :OrderItemable
  has_many :food_item_options
  has_many :order_histories

  def name 
    "#{item_name}"
  end
  
end
