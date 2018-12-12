class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.references :market, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
