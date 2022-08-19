class MenuItem < ApplicationRecord
  belongs_to :discount
  belongs_to :menu
  has_many :ordered_menu_items
  has_many :order_items, through: :ordered_menu_items
  has_many :menu_items_deals
  has_many :deals, through: :menu_items_deals
  has_many :menu_options
  has_many :optional_items, through: :menu_options
  has_many :menu_addons
  has_many :add_ons, through: :menu_addons
end
