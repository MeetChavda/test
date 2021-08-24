class Folder < ActiveRecord::Base
    has_many :employees
    attr_accessible :f_name
    
    # def self.get_employee_data
    #     @emps = Employee.all
    #     @data = []
    #       @emps.each do |a|
    #       row = Hash.new
    #       row[:id] = a.id
    #       row[:emp_id] = a.emp_id 
    #       row[:emp_name] = a.emp_name
    #       row[:emp_email] = a.emp_email
    #       row[:team_leader] = a.team_leader
    #       row[:designation] = a.designation
    #       row[:bank] = a.bank
    #       row[:bank_ac] = a.bank_ac
    #       row[:doj] = a.doj
    #       row[:folder_id] = a.folder.try(:f_name)
    #         @data << row
    #       end
    #     return @data
    # end
   
end
