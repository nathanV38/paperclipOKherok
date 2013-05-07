class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :brand
      t.float :price
      t.string :size

      t.timestamps
    end
  end
end
