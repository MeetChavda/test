class AddFolderRefToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :folder_id, :integer
    add_index :employees, :folder_id
  end
end
