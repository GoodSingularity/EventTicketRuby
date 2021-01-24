class ChangeEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :Time, :time
  end
end
