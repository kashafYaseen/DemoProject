class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_timings, :dependent => :destroy
  has_many :menu_items, :dependent => :destroy
  accepts_nested_attributes_for :menu_timings, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :menu_items, allow_destroy: true, reject_if: :all_blank

  def rest_name
    restaurant.name
  end

end
