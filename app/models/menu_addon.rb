class MenuAddon < ApplicationRecord
  belongs_to :menu_item
  belongs_to :add_on
end
