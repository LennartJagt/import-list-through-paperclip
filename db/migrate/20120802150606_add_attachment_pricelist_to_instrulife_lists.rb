class AddAttachmentPricelistToInstrulifeLists < ActiveRecord::Migration
  def self.up
    change_table :instrulife_lists do |t|
      t.has_attached_file :pricelist
    end
  end

  def self.down
    drop_attached_file :instrulife_lists, :pricelist
  end
end
