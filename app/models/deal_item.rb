class DealItem < ApplicationRecord
  belongs_to :DealItemable, polymorphic: true
  belongs_to :deal
end
