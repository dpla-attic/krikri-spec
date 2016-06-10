require 'bundler/setup'

require 'krikri/spec'

RSpec.configure do |config|
  config.color = true
  config.formatter = :progress
  config.mock_with :rspec

  config.include FactoryGirl::Syntax::Methods

  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end
