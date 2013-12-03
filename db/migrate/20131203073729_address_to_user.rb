class AddressToUser < ActiveRecord::Migration
  def change
    add_column :addresses, :user_id, :integer, index: true
    add_column :invoices, :address_id, :integer, index: true
  end
end
