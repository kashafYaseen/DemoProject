class MenuOptionalItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :optional_item
end
