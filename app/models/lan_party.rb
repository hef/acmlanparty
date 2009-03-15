class LanParty < ActiveRecord::Base
	has_many :events
	
	# Returns the next scheduled instance (either the instance
	# that is scheduled to happen now, or the next one in the future)
	#
	# Will return nil if there is no scheduled event coming up
	def self.FindNextScheduled
		# Find it
		self.find( :all, 
                           :conditions => "end >= date('now')",
                           :order => "start asc"
		)
	end
end
