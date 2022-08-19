class OptionalItem < ApplicationRecord
    has_many :menu_options 
    has_many :menu_items, through: :menu_options
end
