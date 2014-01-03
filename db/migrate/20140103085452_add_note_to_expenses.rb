class AddNoteToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :note, :text
  end
end
