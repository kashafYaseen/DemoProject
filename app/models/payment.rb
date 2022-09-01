class Payment < ApplicationRecord
  enum payment_type: {
    Cash_on_Delivery: 0,
    Online: 1
  }
  has_one :order, :dependent => :destroy
end
