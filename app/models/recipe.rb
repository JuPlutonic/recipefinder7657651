class Recipe
	include HTTParty

	#heroku config:set FOOD2FORK_KEY="c2b5d0ebe1a8da039c568bbf7a2153da"


	key_value = ENV["FOOD2FORK_KEY"]
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key: key_value
	format :json

	def self.for keyword
		get("/search", query: {q: keyword})["recipes"] #in food2fork.com/about/api 's response:  count: value recipes: value
	end
end
