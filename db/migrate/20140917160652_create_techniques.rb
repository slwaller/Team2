class CreateTechniques < ActiveRecord::Migration
  def change
    create_table :techniques do |t|
      t.string :technique
      t.timestamps
    end
  end
end
