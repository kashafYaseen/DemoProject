class OptionalItem < ApplicationRecord
    has_many :menu_items, through: :menu_optional_items
    has_many :food_item_options
    has_many :ordered_options
end
