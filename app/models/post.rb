class Post < ActiveRecord::Base
	# Get the post formatted in markdown syntax
	def formatted_body
		BlueCloth.new( body ).to_html
	end
end
