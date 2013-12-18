class Member < ActiveRecord::Base
  belongs_to :occupation
  belongs_to :partner
  belongs_to :location_state
end
