class FixColumnName < ActiveRecord::Migration
  def up
	rename_column :users, :price, :age
  end

  def down
  end
end
