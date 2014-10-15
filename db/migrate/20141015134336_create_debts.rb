class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.decimal :amount
      t.string :person
      t.boolean :youtothem, :default => false
      t.integer :user_id
      t.timestamps
    end
    add_index :debts, :created_at
  end
end
