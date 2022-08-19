class OrderedMenuItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :order_item
end
