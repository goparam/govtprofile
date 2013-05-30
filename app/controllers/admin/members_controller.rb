class Admin::MembersController < Admin::AdminController
 def destroy
    @member = Member.find(params[:id])
    if @member.destroy  
      respond_to do |f|
        f.js
      end 
    end  
  end
  
  def index
    @title = 'Government Resolutions'
    @desc = 'Manage all Government Resolutions in this section'
    @members = Member.all
  end    
  
  def new
    @title = 'Add new Government Resolution'
    @member = Member.new
  end
  
  def edit
   # @member = Member.find(params[:id])
  end
  
  def update
    @member = Member.find(params[:id])
    @member.department = Department.find(params[:member][:department_id]) rescue []
    if @member.update_attributes(params[:member])
      flash[:success] = "#{@member.id} is successfully updated!"
      redirect_to admin_members_path
    else
      flash[:error] = "#{@member.errors.full_messages}!"
      redirect_to edit_admin_member_path
    end
  end
  
  def create
      @profile_M=params[:profile_M]
       @profile_M['qualifications']=params[:qualification_M].inspect

      @profile_E=params[:profile_E]
      @profile_E['qualifications']=params[:qualification_E].inspect

      @member_param = params[:member]
       @member_param['phones']=params[:phone].inspect

      @member = Member.new(@member_param)


    @member.profiles << Profile.new(@profile_M)
    @member.profiles << Profile.new(params[:profile_E])
   
    if @member.save #&& @profile_M.save && @profile_E.save 
      flash[:success] = "#{@member.id} is successfully created!"
      redirect_to admin_members_path
    else 
      flash[:error] = "#{@member.errors.full_messages}!"
      redirect_to new_admin_member_path
    end
  end

end
