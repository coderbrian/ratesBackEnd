class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.foreign_key :market_id
      t.float :price

      t.timestamps
    end
  end
end
