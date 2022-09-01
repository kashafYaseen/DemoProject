class Payment < ApplicationRecord
  has_one :payment_cutoff, :dependent => :destroy
  has_one :order, :dependent => :destroy  

  def name 
    "#{payment_type}"
  end

end
