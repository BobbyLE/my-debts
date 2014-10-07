class CreateIowethems < ActiveRecord::Migration
  def change
    create_table :iowethems do |t|
      t.decimal :amount
      t.string :person
      t.integer :user_id

      t.timestamps
    end
    add_index :iowethems, [:user_id, :created_at]
  end
end
