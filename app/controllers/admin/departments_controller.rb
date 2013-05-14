class Admin::DepartmentsController < Admin::AdminController
  def destroy
    @department = Department.find(params[:id])
    @is_delete = false
    if !@department.gr.nil?
      @message = "Department is used for Resolution! Can't Delete!"
    else
      if @department.destroy  
        @is_delete = true
        respond_to do |f|
          f.js
        end 
      end
    end
  end
  
  def index
    @title = 'Departments'
    @desc = 'Manage all Departments in this section'
    @departments = Department.all
  end    
  
  def new
    @title = 'Add new Department'
    @department = Department.new
  end
  
  def edit
    @department = Department.find(params[:id])
  end
  
  def update
    @department = Department.find(params[:id])
    if @department.update_attributes(params[:department])
      flash[:success] = "#{@department.id} is successfully updated!"
      redirect_to admin_departments_path
    else
      flash[:error] = "#{@department.errors.full_messages}!"
      redirect_to edit_admin_department_path
    end
  end
  
  def create
    @department = Department.new(params[:department])
    if @department.save
      flash[:success] = "#{@department.id} is successfully created!"
      redirect_to admin_departments_path
    else 
      flash[:error] = "#{@department.errors.full_messages}!"
      redirect_to new_admin_department_path
    end
  end

end
