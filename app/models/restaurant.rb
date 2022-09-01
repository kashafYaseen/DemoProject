class Restaurant < ApplicationRecord
  enum status: {
    Close: 0,
    Open: 1
  }
  has_many :menus, :dependent => :destroy
  has_many :restaurant_timings, :dependent => :destroy
  has_many :employees, :dependent => :destroy
  has_many :discounts, :dependent => :destroy
  has_many :orders, :dependent => :destroy
  has_one :payment_cutoff, :dependent => :destroy
end
