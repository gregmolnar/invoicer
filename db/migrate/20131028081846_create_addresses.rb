class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.belongs_to :client
      t.string :business_name
      t.string :address
      t.string :address2
      t.string :city
      t.string :county
      t.string :country
      t.string :postcode
      t.string :phone
      t.string :fax
      t.string :mobile
      t.string :website
      t.string :email
      t.text :bank_details
      t.string :tax_number
      t.boolean :default, default: false
      t.timestamps
    end
  end
end
