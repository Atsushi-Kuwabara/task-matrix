class RemoveColumnProjectid < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :project_id, :integer
  end
end
