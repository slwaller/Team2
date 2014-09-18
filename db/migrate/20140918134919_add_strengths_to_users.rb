class AddStrengthsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :strengths, :string
  end
end
