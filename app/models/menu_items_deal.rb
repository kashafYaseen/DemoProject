class MenuItemsDeal < ApplicationRecord
  belongs_to :menu_item
  belongs_to :deal
end
