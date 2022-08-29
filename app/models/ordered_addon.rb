class OrderedAddon < ApplicationRecord
  belongs_to :add_on
  belongs_to :order_item
end
