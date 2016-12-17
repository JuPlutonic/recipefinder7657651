require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

RSpec.configure do |config|
	config.include Capybara::DSL
	config.before :all do
		ENV['PRECOMPILE_ASSETS'] ||= begin
			case self.class.metadata[:type]
			when :feature, :view
				STDOUT.write "Precompiling assets..."

				require 'rake'
				Rails.application.load_tasks
				Rake::Task['assets:precompile'].invoke

				STDOUT.puts " done."
				Time.now.to_s
			end
		end
	end
end
