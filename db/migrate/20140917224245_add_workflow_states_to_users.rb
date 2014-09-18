class AddWorkflowStatesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :workflow_state, :string
  end
end
