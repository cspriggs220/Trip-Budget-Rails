class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.integer :total
      t.integer :trip_id
      t.integer :category_id

      t.timestamps
    end
  end
end
