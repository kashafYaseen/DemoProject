class OrderHistory < ApplicationRecord
  belongs_to :deal
  belongs_to :food_item
  belongs_to :group_item
  belongs_to :order_item
end
