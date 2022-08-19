class Order < ApplicationRecord
    belongs_to :restaurant
    belongs_to :employee
    belongs_to :customer
    has_one :payment
    has_many :order_items
end
