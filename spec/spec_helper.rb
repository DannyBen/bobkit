require 'simplecov'
SimpleCov.start

require 'rubygems'
require 'bundler'
Bundler.require :default, :development

require 'fileutils'
require 'debug' if ENV['DEBUGGER']

include Bobkit

require_relative 'support'
include TestSupport

RSpec.configure do |config|
  config.include Tasks
  config.include Watcher
end
