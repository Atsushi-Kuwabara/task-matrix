class RenameStautsIdColumnToStatusId < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :stauts_id, :status_id
  end
end
