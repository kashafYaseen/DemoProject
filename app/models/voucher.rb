class Voucher < ApplicationRecord
  enum status: {
    Invalid: 0,
    Valid: 1
  }
  has_many :voucher_timelines, :dependent => :destroy
  belongs_to :discount
  has_many :orders, :dependent => :destroy
end
