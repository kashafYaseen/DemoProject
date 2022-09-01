class Review < ApplicationRecord
  enum rating_desc: {
    Worst: 0,
    Poor: 1,
    Average: 2,
    Good: 3,
    Excellent: 4
  }
  has_one :order, :dependent => :destroy
end
