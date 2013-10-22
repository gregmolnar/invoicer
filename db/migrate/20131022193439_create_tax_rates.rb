class CreateTaxRates < ActiveRecord::Migration
  def change
    create_table :tax_rates do |t|
      t.string :name
      t.float :percent

      t.timestamps
    end
  end
end
