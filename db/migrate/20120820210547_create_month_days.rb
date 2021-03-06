class CreateMonthDays < ActiveRecord::Migration
  def change
    create_table :month_days do |t|
      t.references :event
      t.integer :day

      t.timestamps
    end
    add_index :month_days, :event_id
    add_index :month_days, [:event_id, :day], :unique => true
  end
end
