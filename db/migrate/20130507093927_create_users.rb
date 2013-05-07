class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :category
      t.string :name
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
