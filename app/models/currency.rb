class Currency < ApplicationRecord
	has_many :base_markets, :class_name => 'Market', :foreign_key => 'base_currency_id'
	has_many :quoted_markets, :class_name => 'Market', :foreign_key => 'quoted_currency_id'
	
end
