require 'simplecov'
SimpleCov.start

require 'rubygems'
require 'bundler'
Bundler.require :default, :development

require 'fileutils'
require 'byebug'

include Bobkit

require_relative 'support'
include TestSupport

RSpec.configure do |config|
  config.include Tasks
end
