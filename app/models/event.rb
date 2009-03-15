class Event < ActiveRecord::Base
	belongs_to :lan_party

	# Returns a list of events (sorted by start_date) that 
	# correspond to the passed instance_id
	def self.FindAllByLanParty( lanparty )
		if lanparty == nil
			return []
		else
		    self.find( :all,
		               :conditions => ["lan_party_id = ?", lanparty.id],
		               :order => "start asc" )
		end
	end
end
