class Rating < ApplicationRecord
  has_one :rating, :dependent => :destroy
end
