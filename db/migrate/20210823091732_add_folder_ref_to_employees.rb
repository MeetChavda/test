class AddFolderRefToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :folder, :references
  end
end
