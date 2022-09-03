class OrderItem < ApplicationRecord
  belongs_to :OrderItemable, polymorphic: true
  belongs_to :order
  has_many :ordered_addons, :dependent => :destroy
  has_many :ordered_options, :dependent => :destroy
  has_many :order_histories

end
