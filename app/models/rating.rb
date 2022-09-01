class Rating < ApplicationRecord
  has_one :rating, :dependent => :destroy

  def name 
    "#{rating_desc}"
  end
end
