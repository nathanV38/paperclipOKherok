class AddSizeIdToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :size_id, :integer
  end
end
