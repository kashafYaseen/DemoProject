class WeekDay < ApplicationRecord
  has_many :restaurant_timings, :dependent => :destroy
  has_many :menu_timings, :dependent => :destroy

  def name 
    "#{day}"
  end
end
