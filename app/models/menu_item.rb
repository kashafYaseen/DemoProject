class MenuItem < ApplicationRecord
  belongs_to :MenuItemable, polymorphic: true
  has_many :add_ons, through: :menu_item_addons 
  has_many :optional_items, through: :menu_optional_items
end
