class Event < ActiveRecord::Base
	belongs_to :instance

	# Returns a list of events (sorted by start_date) that 
	# correspond to the passed instance_id
	def self.FindAllByInstanceId( id )
		self.find( :all,
		           :conditions => ["instance_id = ?", id],
		           :order => "start asc" )
	end
end
