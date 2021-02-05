class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :ammount
      t.float :close_price
      t.float :open_price
      t.float :high
      t.string :low

      t.timestamps
    end
  end
end
