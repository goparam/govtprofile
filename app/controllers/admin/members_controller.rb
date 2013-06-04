class Admin::MembersController < Admin::AdminController
 def destroy
    @member = Member.find(params[:id])
    @profiles=@member.profiles
           @profiles.each do |profiles| 
            if profiles['language']=="M"
              @Profile_M= profiles
            else 
              @Profile_E= profiles
            end
          end
    if @member.destroy  && @Profile_E.destroy && @Profile_M.destroy
      respond_to do |format|
         flash[:success] = "#{@member.id} is successfully Deleted!"
        format.html { redirect_to admin_members_url }
      
      end
      else 
      flash[:error] = "#{@member.errors.full_messages}!"
      redirect_to redirect_to admin_members_url
    end
    
  end
  
  def index
    @title = 'Phone Book'
    
    @members = Member.joins(:profiles).order("profiles.name").uniq

  end    
  
  def new
    
    @member = Member.new
  end
  
  def edit
    @member = Member.find(params[:id])
    
  end
  
  def update
    @member = Member.find(params[:id])
    @profile_M=@member.profiles.find_by_language("M")
     @profile_M_param=params[:profile_M]
    @profile_M_param['qualifications']=params[:qualification_M].to_json#.inspect


     @profile_E=@member.profiles.find_by_language("E")
     @profile_E_param=params[:profile_E]
      @profile_E_param['qualifications']=params[:qualification_E].to_json#.inspect


     @member_param = params[:member]
       @member_param['phones']=params[:phone].to_json#.inspect


    if @member.update_attributes(@member_param) && @profile_E.update_attributes(@profile_E_param) && @profile_M.update_attributes(@profile_M_param)
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
      redirect_to "/admin/members/#{@member.id}"
    else 
      flash[:error] = "#{@member.errors.full_messages}!"
      redirect_to new_admin_member_path
    end
  end



   def show
    
    @member = Member.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json 
    end
  end


end
