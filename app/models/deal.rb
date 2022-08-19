class Deal < ApplicationRecord
  belongs_to :discount
  has_many :menu_items_deals
  has_many :menu_items, through: :menu_items_deals
end
