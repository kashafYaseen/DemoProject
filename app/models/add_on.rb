class AddOn < ApplicationRecord
    has_many :menu_items, through: :menu_item_addons 
    has_many :ordered_addons
end
