class Admin::ProfilesController < Admin::AdminController
	def index
		 @profiles = Profile.all
	end
	def new
		@title = 'Add new Profile'
		@member = Member.new
    @profile = Profile.new
    @phone = Phone.new
    @qualification = Qualification.new
	end
	def create
    @member = Member.new(params[:member])
    @phone = Phone.new(params[:phone])
    @qualification = Qualification.new(params[:qualification])
    @profile = Profile.new(param[:profile])
    if @profile.save
      flash[:success] = "#{@profile.id} is successfully created!"
      redirect_to admin_profiles_path
    else 
      flash[:error] = "#{@profile.errors.full_messages}!"
      redirect_to new_admin_profile_path
    end
  end

   def edit
    @profile = Profile.find(params[:id])
  end
  
  def update
    @profile = Profile.find(params[:id])
    
    if @profile.update_attributes(params[:profile])
      flash[:success] = "#{@profile.first_name} is successfully updated!"
      redirect_to admin_profiles_path
    else
      flash[:error] = "#{@profile.errors.full_messages}!"
      redirect_to edit_admin_profile_path
    end
  end
  
end
