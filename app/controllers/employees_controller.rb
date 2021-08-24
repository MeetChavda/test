class EmployeesController < ApplicationController
  # GET /employees
  # GET /employees.json

  def index
    # @emp = Employee.find(params[:id])
    # .Employee.all.map { |q| [ q.to_s, q.id ] }
    #  @empall = Employee.all
    # #  User.find params.require(:user_id)
    @employees = Employee.all
  
    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @employees }
    # end
    #   # @emp = Employee.find(params[:id])
       @employees.each do |emp| 
        # puts emp.employee.to_s
        @coldef_arr = [{:headerName=> "#",:field=> "#",sortable: true,filter: true,:cellStyle=>{"text-align"=>"center"},"width"=>40, "headerCellTemplate"=>"<span style='padding-top:15px;'><input type='checkbox' id='aghcb' onclick=manage_header_chekbox()></span>" },
          {:headerName => "ID",:field => "id",sortable: true,filter: true},
          {:headerName=>"Employee ID",:field=>"emp_id",sortable: true,filter: true},
          {:headerName=> "Employee Name", :field=> "emp_name",sortable: true,filter: true,editable: true},
          {:headerName=> "Email ID", :field=> "emp_email",sortable: true,filter: true},
          {:headerName=> "Team Leader", :field=> "team_leader",sortable: true,filter: true },
          {:headerName=> "Designation", :field=> "designation",sortable: true,filter: true},
          {:headerName=> "Bank", :field=> "bank",sortable: true,filter: true},
          {:headerName=> "Bank A/C", :field=> "bank_ac",sortable: true,filter: true},
          {:headerName=> "Date Of Joining", :field=> "doj",sortable: true,filter: true},
          {:headerName => "Employeename", :field=> "folder_id",:sortable => true, filter: true, rowGroup: true, hide: true }

          ]
  
      end
    
    # respond_to do |format|
    # format.json { render json: 
    # @employees = Employee.all

    #   format.html # index.html.erb
        

    # end

  end
  def show
    # @emp = Employee.find(params[:id])
    @employee = Employee.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
    # @coldef_arr = [{:headerName=> "#",:field=> "#",sortable: true,filter: true,:cellStyle=>{"text-align"=>"center"},"width"=>40, "headerCellTemplate"=>"<span style='padding-top:15px;'><input type='checkbox' id='aghcb' onclick=manage_header_chekbox()></span>" },
    #   {:headerName => "Foldername", :field=> @emp.folder.f_name,:sortable => true, filter: true, rowGroup: true},
    #   {:headerName => "ID",:field => "id",sortable: true,filter: true},
    #   {:headerName=>"Employee ID",:field=>"emp_id",sortable: true,filter: true},
    #   {:headerName=> "Employee Name", :field=> "emp_name",sortable: true,filter: true},
    #   {:headerName=> "Email ID", :field=> "emp_email",sortable: true,filter: true},
    #   {:headerName=> "Team Leader", :field=> "team_leader",sortable: true,filter: true },
    #   {:headerName=> "Designation", :field=> "designation",sortable: true,filter: true},
    #   {:headerName=> "Bank", :field=> "bank",sortable: true,filter: true},
    #   {:headerName=> "Bank A/C", :field=> "bank_ac",sortable: true,filter: true},
    #   {:headerName=> "Date Of Joining", :field=> "doj",sortable: true,filter: true}
    #   ]

    #   p 1111111111111111111
    #   p @coldef_arr
  end
    # GET /employees
    # GET /employees.json
    
      
    
  
    # GET /employees/1
    # GET /employees/1.json
    def show
      
    end
  
    # GET /employees/new
    # GET /employees/new.json
    def new
      @employee = Employee.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @employee }
      end
    end
  
    # GET /employees/1/edit
    def edit
      @employee = Employee.find(params[:id])
    end
  
    # POST /employees
    # POST /employees.json
    def create
      @employee = Employee.new(params[:employee])
  
      respond_to do |format|
        if @employee.save
          format.html { redirect_to employees_path, notice: 'Employee was successfully created.' }
          format.json { render json: @employee, status: :created, location: @employee }
        else
          format.html { render action: "new" }
          format.json { render json: @employee.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /employees/1
    # PUT /employees/1.json
    def update
      @employee = Employee.find(params[:id])
  
      respond_to do |format|
        if @employee.update_attributes(params[:employee])
          format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @employee.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /employees/1
    # DELETE /employees/1.json
    def destroy
      @employee = Employee.find(params[:id])
      @employee.destroy
  
      respond_to do |format|
        format.html { redirect_to employees_url }
        format.json { head :no_content }
      end
    end
    
  
  
end
