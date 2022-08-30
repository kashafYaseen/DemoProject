class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :voucher
  belongs_to :payment 
  validates :payment_id, uniqueness: true
  belongs_to :restaurant
  belongs_to :order_status
  belongs_to :rating
  validates :rating_id, uniqueness: true
  has_many :order_items, :dependent => :destroy
end