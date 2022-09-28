class RestaurantTiming < ApplicationRecord
  enum week_day: {
    Monday: 0,
    Tuesday: 1,
    Wedensday: 2,
    Thursday: 3,
    Friday: 4,
    Saturday: 5,
    Sunday: 6
  }
  belongs_to :restaurant

  def name
    " #{opening_time} #{closing_time}"
  end

end
