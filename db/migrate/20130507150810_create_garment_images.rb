class CreateGarmentImages < ActiveRecord::Migration
  def change
    create_table :garment_images do |t|
      t.string :caption
      t.string :
      t.string :garment_id
      t.integer :

      t.timestamps
    end
  end
end
