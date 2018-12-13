class RemoveBaseCurrencyIdFromMarkets < ActiveRecord::Migration[5.2]
  def change
    remove_column :markets, :base_currency_id, :integer
  end
end
