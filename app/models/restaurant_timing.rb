class RestaurantTiming < ApplicationRecord
  belongs_to :week_day
  belongs_to :restaurant
  
end
