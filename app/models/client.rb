class Client < ActiveRecord::Base
  attr_accessible :address, :email, :mobile_No, :name, :password, :post_code , :password_confirmation
has_secure_password
before_save { |client| client.email = email.downcase }  


has_attached_file :avatar, :styles => { :medium => "300x300>",  square: '200x200#', :thumb => "100x100>" }




 validates :name, presence: true , length: { maximum: 30 }

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true 
validates_confirmation_of :password, presence: true
validates :mobile_No, presence: true, length: { minimum: 13 }
end
