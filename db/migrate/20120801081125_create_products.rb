class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :instrulife_product_number

      t.timestamps
    end
  end
end
