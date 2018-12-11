class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.Foreign_key :basecurrencyid
      t.Foreign_key :quotedcurrencyid

      t.timestamps
    end
  end
end
