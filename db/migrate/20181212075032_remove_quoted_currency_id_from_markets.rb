class RemoveQuotedCurrencyIdFromMarkets < ActiveRecord::Migration[5.2]
  def change
    remove_column :markets, :quoted_currency_id, :integer
  end
end
