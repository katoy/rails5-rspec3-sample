class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :payee
      t.decimal :amount, precision: 10, scale: 2
      t.datetime :day_at
      t.string :title

      t.timestamps
    end
  end
end
