class AddAttachmentToExpense < ActiveRecord::Migration
  def self.up
    add_attachment :expenses, :file
  end

  def self.down
    remove_attachment :expenses, :file
  end
end
