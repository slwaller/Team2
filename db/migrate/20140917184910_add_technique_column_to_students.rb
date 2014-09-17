class AddTechniqueColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :technique, :string
  end
end
