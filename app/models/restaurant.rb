class Restaurant < ApplicationRecord
    has_many :employees
    has_many :orders
    has_many :menus
end
