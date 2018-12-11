class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.foreign_key :basecurrencyid
      t.foreign_key :quotedcurrencyid

      t.timestamps
    end
  end
end
