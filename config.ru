begin
  require 'bundler' 
rescue LoadError
  require 'rubygems'
  require 'bundler'
end

# This actually requires the bundled gems
Bundler.require

require './app'
run Sinatra::Application