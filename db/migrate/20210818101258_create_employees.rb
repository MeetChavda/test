class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :id , null: false , primary_key: true
      t.string :emp_id, null: false
      t.string :emp_name, null: false
      t.string :emp_email, null: false
      t.string :team_leader,:default => :null
      t.string :designation,:default => :null
      t.string :bank,:default => :null
      t.string :bank_ac,:default => :null
      t.string :doj,:default => :null

      t.timestamps
    end
  end
end
