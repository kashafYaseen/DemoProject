class VoucherTimeline < ApplicationRecord
  enum status: {
    Deactivate: 0,
    Activate: 1
  }
  belongs_to :voucher
end
