class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.integer :budget_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
