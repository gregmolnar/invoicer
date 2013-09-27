class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :county
      t.string :postcode
      t.string :country
      t.string :tax_number
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
