class Recipe
	include HTTParty

	# AWS::S3::Base.establish_connection!(
	# 	:access_key_id => ENV['S3_KEY'],
	# 	 :secret_access_key => ENV['S3_SECRET']
	# 	 :key_value => ENV['FOOD2FORK_KEY']
	# )

	key_value = ENV["FOOD2FORK_KEY"]
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key: key_value
	format :json

	def self.for keyword
		get("/search", query: {q: keyword})["recipes"] #in food2fork.com/about/api 's response:  count: value recipes: value
	end
end
