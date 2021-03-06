require 'simplecov'
SimpleCov.start

require 'rubygems'
require 'bundler'
Bundler.require :default, :development

include %{gem_name_camel}
require_relative 'spec_mixin'

RSpec.configure do |c|
  c.include SpecMixin
end
