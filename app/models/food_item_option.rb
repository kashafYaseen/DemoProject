class FoodItemOption < ApplicationRecord
  belongs_to :food_item
  belongs_to :optional_item
end
