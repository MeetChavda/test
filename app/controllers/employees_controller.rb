class EmployeesController < ApplicationController
  # GET /employees
  # GET /employees.json
  def index

    @coldef_arr = [{:headerName=> "#",:field=> "#",sortable: true,filter: true,:cellStyle=>{"text-align"=>"center"},"width"=>40, "headerCellTemplate"=>"<span style='padding-top:15px;'><input type='checkbox' id='aghcb' onclick=manage_header_chekbox()></span>" } ,
      {:headerName => "ID",:field => "id",sortable: true,filter: true},
      {:headerName=>"Employee ID",:field=>"emp_id",sortable: true,filter: true},
      {:headerName=> "Employee Name", :field=> "emp_name",sortable: true,filter: true},
      {:headerName=> "Email ID", :field=> "emp_email",sortable: true,filter: true},
      {:headerName=> "Team Leader", :field=> "team_leader",sortable: true,filter: true, enableRowGroup: true },
      {:headerName=> "Designation", :field=> "designation",sortable: true,filter: true, enableRowGroup: true },
      {:headerName=> "Bank", :field=> "bank",sortable: true,filter: true, enableRowGroup: true },
      {:headerName=> "Bank A/C", :field=> "bank_ac",sortable: true,filter: true},
      {:headerName=> "Date Of Joining", :field=> "doj",sortable: true,filter: true}
      ]
    
    # respond_to do |format|
    # format.json { render json: 
    # @employees = Employee.all

    #   format.html # index.html.erb
        

    # end

  end

  
end
