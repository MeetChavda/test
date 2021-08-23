class AddFolderToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :folder,:default => '', :null => false
  end
end
