class Discount < ApplicationRecord
  enum disc_type: {
    Percent: 0,
    Flat: 1
  }
  belongs_to :restaurant
  has_many :vouchers
  has_many :food_items
end
