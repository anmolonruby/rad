RAD_ROOT = "#{File.dirname(__FILE__)}/../.." unless defined?(RAD_ROOT)

unless defined?(PROJECT_DIR_NAME)
  a = File.expand_path(File.expand_path("#{RAD_ROOT}")).split("/")
  PROJECT_DIR_NAME = a[a.length-1]
end


%w(generators/makefile/makefile.rb arduino_sketch.rb arduino_plugin.rb tasks/rad.rb).each do |path|
  require File.expand_path("#{RAD_ROOT}/vendor/rad/#{path}")
end

