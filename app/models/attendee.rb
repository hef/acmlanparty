class Attendee < ActiveRecord::Base
	belongs_to :user
	belongs_to :lan_party
end
