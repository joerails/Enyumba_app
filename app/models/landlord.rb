class Landlord < ActiveRecord::Base
  attr_accessible :email, :location, :mobile_No, :name, :national_id
has_many :houses

before_save { |landlord| landlord.email = email.downcase }

validates :location, presence: true
validates :mobile_No, presence: true
validates :name, presence: true, length: { maximum: 30 }
validates :national_id, presence: true, length: { maximum: 9 }


VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

end
