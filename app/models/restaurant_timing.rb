class RestaurantTiming < ApplicationRecord
  belongs_to :week_day
  belongs_to :restaurant

  def name 
    " #{opening_time} #{closing_time}"
  end

end
