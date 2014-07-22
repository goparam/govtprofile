class Phonebookuser < ActiveRecord::Base

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:token_authenticatable

   #Setup accessible (or protected) attributes for your model
  attr_accessible  :email, :password, :password_confirmation, :photo,:remember_me, :approved,:phone,:authentication_token,  :name ,:imeino, :designation, :posting_district, :member_id, :last_name, :latitude, :longitude, :gmaps, :location_updation_time, :native_district, :posting_location, :batch, :year_of_posting, :persent_post, :other_info, :education, :father_name, :year_of_joining, :native_district, :present_post,:native_location,:phone1,:phone2
   #attr_accessible :title, :body
  

 has_attached_file :photo,
   :storage => :dropbox,
   :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
   :styles => { :medium => "300x300" , :thumb => "100x100>"},    
   :dropbox_options => {       
   :path => proc { |style| "#{style}/#{id}_#{photo.original_filename}"},       :unique_filename => true   
   }
  
  # validates :photo, :attachment_presence => true 
       
  before_save :ensure_authentication_token 
  validates :mail, uniqueness: true, :allow_blank => true
  validates :imeino, uniqueness: true, :allow_blank => false
  validates :phone, uniqueness: true
  validates :email,  :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i }
  validates :mail,  :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i }
 


  def email_required?
      false
  end

  acts_as_gmappable

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  "hellow" 
  end
  
end

end
