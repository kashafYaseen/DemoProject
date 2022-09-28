class Order < ApplicationRecord
  enum order_status: {
    Draft: 0,
    Ordered: 1,
    Preparing: 2,
    Checking: 3,
    Prepared: 4,
    Delivering: 5,
    TakenOver: 6,
    Cancelled: 7
  }

  belongs_to :customer
  belongs_to :voucher
  belongs_to :payment
  validates :payment_id, uniqueness: true
  belongs_to :restaurant
  belongs_to :review
  validates :review_id, uniqueness: true
  has_many :order_items, :dependent => :destroy

  delegate :first_name, :last_name, :address, :email, :contact, to: :customer

  def name
    "#{first_name} #{last_name}"
  end

  def order_payment
    payment.total_payment
  end
end
