class Payment < ApplicationRecord
    has_one :payment_cutoff, :dependent => :destroy
    has_one :order, :dependent => :destroy 
    
end
