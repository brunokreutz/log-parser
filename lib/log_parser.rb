# frozen_string_literal: true

require_relative 'log_parser/log_entry'
require_relative 'log_parser/file_loader'
require_relative 'log_parser/page_collection'
require_relative 'log_parser/runner'
require 'optparse'

# This is the module that parses the log file
module LogParser
  class Error < StandardError; end
  Runner.run if ENV['RACK_ENV'].nil?
end
