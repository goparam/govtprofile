class Admin::MembersController < Admin::AdminController
   caches_action :index
   before_filter(only:[:index]){@page_caching=true}
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
    if @member.update_attributes(:is_deleted=>1)  && @Profile_E.destroy && @Profile_M.destroy
    expire_action :action => :index
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
    
    @members = Member.find_all_by_is_deleted(0)

  end    
  
  def new
    
    @member = Member.includes(:profiles).new
    
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

       @profile_E_param['district']=(District.find(params[:profile_E][:district])).name
       @profile_E_param['city']=(Taluka.find(params[:profile_E][:city])).name
       @profile_E_param['current_workong_district']=(District.find(params[:profile_E][:current_workong_district])).name
       @profile_E_param['current_working_location']=(Taluka.find(params[:profile_E][:current_working_location])).name
     

    if @member.update_attributes(@member_param) && @profile_E.update_attributes(@profile_E_param) && @profile_M.update_attributes(@profile_M_param)
        expire_action :action => :index
      flash[:success] = "#{@member.id} is successfully updated!"
     redirect_to "/admin/members/#{@member.id}"
    else
      flash[:error] = "#{@member.errors.full_messages}!"
      redirect_to "/admin/english/#{@member.id}/edit"
    end
  end
  
  def create

      @profile_M=params[:profile_M]
      @profile_M['qualifications']=params[:qualification_M].to_json#.inspect
      @profile_M['language']="M"

      @profile_E=params[:profile_E]
      @profile_E['qualifications']=params[:qualification_E].to_json#.inspect
      @profile_E['language']="E"
      @profile_E['current_workong_district']=(District.find(params[:profile_E][:current_workong_district])).name
      @profile_E['current_working_location']=(Taluka.find(params[:profile_E][:current_working_location])).name
      @profile_E['district']=(District.find(params[:profile_E][:district])).name
      @profile_E['city']=(Taluka.find(params[:profile_E][:city])).name
      
      @member_param = params[:member]
      @member_param['phones']=params[:phone].to_json#.inspect

      @member = Member.new(@member_param)


      @member.profiles << Profile.new(@profile_M)
      @member.profiles << Profile.new(params[:profile_E])
   
    if @member.save #&& @profile_M.save && @profile_E.save 
      expire_action :action => :index
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
def english
  @taluka = Taluka.all()
    @member = Member.new
end
def englishEdit
    @member = Member.find(params[:id])
end
  
def users
   authenticate_admin
   @users=User.all
   @users_approved=User.find_all_by_approved(2)
    @users_not_approved=User.find_all_by_approved(0)
    @users_declined=User.find_all_by_approved(3)
end
def approve
  authenticate_admin


    @user=User.find(params[:id])
    Sendmail.registration_confirmation(@user).deliver
  if @user.update_attributes(:approved=>2)
      flash[:success] = "#{@user.email} is successfully approved!"
      
      redirect_to "/admin/users"      
    else
      flash[:error] = "#{@user.errors.full_messages}!"
      redirect_to "/admin/users"      
    end
  

end
def decline
  authenticate_admin
  @user=User.find(params[:id])
  if @user.update_attributes(:approved=>3)
      flash[:success] = "#{@user.email} is added to declined list!"
      
      redirect_to "/admin/users"      
    else
      flash[:error] = "#{@user.errors.full_messages}!"
    end
end
def userdestroy
    user=User.find(params[:id])
    if user.destroy
       flash[:success] = "#{user.phone} is successfully Deleted!"

    else
       flash[:error] = "#{user.errors.full_messages}!"
    end
    redirect_to "/admin/users"  
  end
  def edituser
    @user=User.find(params[:id])
  end

  def updateuser
    authenticate_admin  
    print "----------------------params = #{params}------------------------"
    user = User.find_for_database_authentication(:phone => params[:user][:phone])
    if user
      if params[:user][:password].eql? params[:user][:password_confirmation]       
        user.password = params[:user][:password]
        if user.save
           Sendmail.password_reset(user).deliver
         flash[:success] = "#{user.phone} is successfully updated!"
        
        else
          flash[:error] = "#{user.errors.full_messages}! error in updation"
        end
        else
    
        flash[:error] = "Password must be same!"
      end
    else
      flash[:error] = "User not found!"
    end
    redirect_to "/admin/users" 
  end

end
