class Voucher < ApplicationRecord
  enum status: {
    Invalid: 0,
    Valid: 1
  }
  has_many :voucher_timelines, :dependent => :destroy
  accepts_nested_attributes_for :voucher_timelines, allow_destroy: true, reject_if: :all_blank
  validates_associated :voucher_timelines
  belongs_to :discount
  has_many :orders
end
