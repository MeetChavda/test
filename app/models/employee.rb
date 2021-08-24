class Employee < ActiveRecord::Base
  belongs_to :folder
  attr_accessible :emp_id, :emp_name,:emp_email, :team_leader, :designation, :bank, :bank_ac, :doj, :folder_id
  def self.get_employee_data
    @emps = Employee.all
    # @folder = Folder.all
     @data = []
      @emps.each do |a|
      row = Hash.new
      row[:id] = a.id
      row[:emp_id] = a.emp_id 
      row[:emp_name] = a.emp_name
      row[:emp_email] = a.emp_email
      row[:team_leader] = a.team_leader
      row[:designation] = a.designation
      row[:bank] = a.bank
      row[:bank_ac] = a.bank_ac
      row[:doj] = a.doj
      row[:folder_id] = a.folder.try(:f_name)
        @data << row
      end
    return @data
    #   ab= "#{a.folder.try(:f_name)}"

    #   @co = [{:headerName=> "#",:field=> "#",sortable: true,filter: true,:cellStyle=>{"text-align"=>"center"},"width"=>40, "headerCellTemplate"=>"<span style='padding-top:15px;'><input type='checkbox' id='aghcb' onclick=manage_header_chekbox()></span>" },
          
    #     {:headerName => "Foldername", :field=> ab,:sortable => true, filter: true},

    #     {:headerName => "ID",:field => "id",sortable: true,filter: true},
    #     {:headerName=>"Employee ID",:field=>"emp_id",sortable: true,filter: true},
    #     {:headerName=> "Employee Name", :field=> "emp_name",sortable: true,filter: true},
    #     {:headerName=> "Email ID", :field=> "emp_email",sortable: true,filter: true},
    #     {:headerName=> "Team Leader", :field=> "team_leader",sortable: true,filter: true },
    #     {:headerName=> "Designation", :field=> "designation",sortable: true,filter: true},
    #     {:headerName=> "Bank", :field=> "bank",sortable: true,filter: true},
    #     {:headerName=> "Bank A/C", :field=> "bank_ac",sortable: true,filter: true},
    #     {:headerName=> "Date Of Joining", :field=> "doj",sortable: true,filter: true}
    #     ]
    end 
    # return @co
    # return Employee.select([:id,:emp_id,:emp_name,:emp_email,:team_leader,:designation,:bank,:bank_ac,:doj,:folder_id]).map{|x| x.attributes }
  end
