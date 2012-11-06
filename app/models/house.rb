class House < ActiveRecord::Base
  attr_accessible :category, :description, :landlord_id, :location, :price
 belongs_to :landlord

has_attached_file :avatar, :styles => { :medium => "300x300>",  square: '200x200#', :thumb => "100x100>" }

validates :category, presence: true
validates :description, presence: true
validates :location, presence: true
validates :price, presence: true


end
