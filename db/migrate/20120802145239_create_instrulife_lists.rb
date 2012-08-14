class CreateInstrulifeLists < ActiveRecord::Migration
  def change
    create_table :instrulife_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
