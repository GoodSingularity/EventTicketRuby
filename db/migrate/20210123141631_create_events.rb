class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :Title
      t.date :Date
      t.datetime :Time
      t.integer :Tickets
      t.integer :Price

      t.timestamps
    end
  end
end
