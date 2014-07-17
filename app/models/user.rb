# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  role                   :string(255)      default("User")
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  approved               :integer          default(0), not null
#  authentication_token   :string(255)
#  phone                  :string(255)
#  name                   :string(255)
#  mail                   :string(255)
#  imeino                 :string(255)
#  designation            :string(255)
#  posting_district       :string(255)
#  latitude               :float
#  longitude              :float
#  gmaps                  :boolean
#  member_id              :integer
#  last_name              :string(255)


class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :photo,:remember_me, :approved,:phone,:authentication_token,  :name ,:imeino, :designation, :posting_district, :member_id, :last_name, :latitude, :longitude, :gmaps, :location_updation_time, :native_district, :posting_location, :batch, :year_of_posting, :persent_post, :other_info, :education, :father_name, :year_of_joining, :native_district, :present_post,:native_location,:phone1,:phone2
   # attr_accessible :title, :body

 has_attached_file :photo, 
      :storage => :dropbox,
      :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
      :styles => { :medium => "300x300>" }, 
      :dropbox_options => {:path => proc { |style| "#{style}/#{id}_#{photo.original_filename}" }}
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
belongs_to :member
end
