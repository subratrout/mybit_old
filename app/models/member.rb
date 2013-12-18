class Member < ActiveRecord::Base
  belongs_to :occupation
  belongs_to :partner
  belongs_to :location_state

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
