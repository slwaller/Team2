class AddTechniqueToStudents < ActiveRecord::Migration
  def change
    add_column :students, :technique, :string
  end
end
