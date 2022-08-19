class OrderItem < ApplicationRecord
  belongs_to :order
  has_many :ordered_menu_items
  has_many :menu_items, through: :ordered_menu_items

end
