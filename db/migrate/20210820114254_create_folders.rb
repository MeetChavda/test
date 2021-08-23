class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :f_name

      t.timestamps
    end
  end
end
