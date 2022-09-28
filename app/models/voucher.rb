class Voucher < ApplicationRecord
  enum status: {
    Invalid: 0,
    Valid: 1
  }
  has_many :voucher_timelines, :dependent => :destroy
  accepts_nested_attributes_for :voucher_timelines, allow_destroy: true, reject_if: :all_blank
  validates_associated :voucher_timelines
  belongs_to :discount
  has_many :orders, :dependent => :destroy

  delegate :restaurant, to: :discount
  delegate :disc_percent, to: :discount
  delegate :disc_type, to: :discount

  def name
    "#{promo_code}"
  end

end
