class RenameTaskColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :importance, :importance_id
    rename_column :tasks, :urgency, :urgency_id
    rename_column :tasks, :status, :stauts_id 
  end
end
