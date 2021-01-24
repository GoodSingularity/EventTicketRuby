class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :Event_id
      t.integer :amount

      t.timestamps
    end
  end
end
