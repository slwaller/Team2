class AddWorkflowStatesToStudents < ActiveRecord::Migration
  def change
    add_column :students, :workflow_state, :string
  end
end
