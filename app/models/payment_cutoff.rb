class PaymentCutoff < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, uniqueness: true
end
