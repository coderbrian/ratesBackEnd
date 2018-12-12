class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.references :base_currency
      t.references :quoted_currency

      t.timestamps
    end

    add_foreign_key :markets, :currencies, column: :base_currency_id, primary_key: :id
    add_foreign_key :markets, :currencies, column: :quoted_currency_id, primary_key: :id
    
  end
end
