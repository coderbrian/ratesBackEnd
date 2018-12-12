class Market < ApplicationRecord
  belongs_to :base_currency, :class_name => 'Currency'
  belongs_to :quoted_currency, :class_name => 'Currency'
  has_one :rate
end
