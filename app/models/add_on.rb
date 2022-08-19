class AddOn < ApplicationRecord
    has_many :menu_addons
    has_many :menu_items, through: :menu_addons
end
