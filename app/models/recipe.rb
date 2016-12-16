class Recipe
	include HTTParty

	base_uri "http://food2fork.com/api"
	default_params key: ENV["FOOD2FORK_KEY"]
	format :json

	def self.for keyword
		get("/search", query: {q: keyword})["recipes"] #in food2fork.com/about/api 's response:  count: value recipes: value
	end
end
