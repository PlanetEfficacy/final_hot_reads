# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.formatter = :documentation
end

def create_many_reads
  create_list :read, 11, url: "http://www.example.com/11"
  create_list :read, 10, url: "http://www.example.com/10"
  create_list :read, 9, url: "http://www.example.com/9"
  create_list :read, 8, url: "http://www.example.com/8"
  create_list :read, 7, url: "http://www.example.com/7"
  create_list :read, 6, url: "http://www.example.com/6"
  create_list :read, 5, url: "http://www.example.com/5"
  create_list :read, 4, url: "http://www.example.com/4"
  create_list :read, 3, url: "http://www.example.com/3"
  create_list :read, 2, url: "http://www.example.com/2"

  create_list :read, 10
end
