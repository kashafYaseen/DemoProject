class Voucher < ApplicationRecord
  has_many :voucher_timelines, :dependent => :destroy
  belongs_to :discount
  has_many :orders, :dependent => :destroy
end
