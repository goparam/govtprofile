class Admin::GrsController < Admin::AdminController
  def destroy
    @gr = Gr.find(params[:id])
    if @gr.destroy  
      respond_to do |f|
        f.js
      end 
    end  
  end
  
  def index
    @title = 'Government Resolutions'
    @desc = 'Manage all Government Resolutions in this section'
    @grs = Gr.order("gr_date desc")
  end    
  
  def new
    @title = 'Add new Government Resolution'
    @gr = Gr.new
  end
  
  def edit
    @gr = Gr.find(params[:id])
  end
  
  def update
    @gr = Gr.find(params[:id])
    @gr.department = Department.find(params[:gr][:department_id]) rescue []
    if @gr.update_attributes(params[:gr])
      flash[:success] = "#{@gr.id} is successfully updated!"
      redirect_to admin_grs_path
    else
      flash[:error] = "#{@gr.errors.full_messages}!"
      redirect_to edit_admin_gr_path
    end
  end
  
  def create
    @gr = Gr.new(params[:gr])
    @gr.department = Department.find(params[:gr][:department_id]) rescue nil
    if @gr.save
      flash[:success] = "#{@gr.id} is successfully created!"
      redirect_to admin_grs_path
    else 
      flash[:error] = "#{@gr.errors.full_messages}!"
      redirect_to new_admin_gr_path
    end
  end

end
