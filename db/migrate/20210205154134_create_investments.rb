class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.string :text
      t.references :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
