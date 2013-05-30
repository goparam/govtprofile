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
    @title = 'Phone Book'
    
    @members = Member.all
  end    
  
  def new
    @title = 'Add new Government Resolution'
    @member = Member.new
  end
  
  def edit
    @member = Member.find(params[:id])
    
  end
  
  def update
    @member = Member.find(params[:id])
    @profile_M=@member.profiles.find_by_language("M")
     @profile_E=@member.profiles.find_by_language("E")
    if @member.update_attributes(params[:member]) && @profile_E.update_attributes(params[:profile_E]) && @profile_M.update_attributes(params[:member_M])
      flash[:success] = "#{@member.id} is successfully updated!"
      redirect_to admin_members_path
    else
      flash[:error] = "#{@member.errors.full_messages}!"
      redirect_to edit_admin_member_path
    end
  end
  
  def create
      @profile_M=params[:profile_M]
       @profile_M['qualifications']=params[:qualification_M].to_json#.inspect
        @profile_M['language']="M"

      @profile_E=params[:profile_E]
      @profile_E['qualifications']=params[:qualification_E].to_json#.inspect
      @profile_E['language']="E"

      @member_param = params[:member]
       @member_param['phones']=params[:phone].to_json#.inspect

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
