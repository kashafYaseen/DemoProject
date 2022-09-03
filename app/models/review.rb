class Review < ApplicationRecord
  has_one :order, :dependent => :destroy

  def name 
    "#{rating_desc}"
  end
end
