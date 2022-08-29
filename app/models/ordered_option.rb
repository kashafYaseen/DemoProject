class OrderedOption < ApplicationRecord
  belongs_to :optional_item
  belongs_to :order_item
end
