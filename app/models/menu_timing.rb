class MenuTiming < ApplicationRecord
  belongs_to :week_day
  belongs_to :menu

  def name 
    "#{start_time} to #{end_time}"
  end
end
