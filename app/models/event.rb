class Event < ActiveRecord::Base
	belongs_to :lan_party

	# Returns a list of events (sorted by start_date) that 
	# correspond to the passed instance_id
	def self.FindAllByLanPartyId( id )
		self.find( :all,
		           :conditions => ["lan_party_id = ?", id],
		           :order => "start asc" )
	end
end
