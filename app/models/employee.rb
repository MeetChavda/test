class Employee < ActiveRecord::Base
  belongs_to :folder
  def self.get_employee_data
    return Employee.select([:id,:emp_id,:emp_name,:emp_email,:team_leader,:designation,:bank,:bank_ac,:doj]).map{|x| x.attributes}
  end
end
