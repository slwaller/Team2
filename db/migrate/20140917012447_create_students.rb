class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :github
      t.timestamps
    end
  end
end
