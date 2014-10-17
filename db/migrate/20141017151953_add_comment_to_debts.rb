class AddCommentToDebts < ActiveRecord::Migration
  def change
    add_column :debts, :comment, :string
  end
end
