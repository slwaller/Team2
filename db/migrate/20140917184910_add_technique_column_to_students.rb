class AddTechniqueColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :techique, :string
  end
end
