class Instance < ActiveRecord::Base
	
	# Returns the next scheduled instance (either the instance
	# that is scheduled to happen now, or the next one in the future)
	#
	# Will return nil if there is no scheduled event coming up
	def self.FindNextScheduled
		# Find it
		self.find( :first, 
		           :conditions => "start >= date('now')",
		           :order => "start asc"
		)
	end
end
