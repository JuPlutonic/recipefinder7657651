class GreeterController < ApplicationController
	def hello
		random_names = ["Alex", "Joe", "Michael"]
		@name = random_names.sample
		@time = Time.now
		@times_displayed ||= 0 #Should work only in gaps of one request
		@times_displayed += 1
	end
	def goodbye
		random_names = ["Alex", "Joe", "Michael"]
		@name = random_names.sample
	end
end
