class AddWeaknessToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weakness, :string
  end
end
