require "bundler/gem_tasks"

require "rake/extensiontask"

task :build => :compile

Rake::ExtensionTask.new("max31855") do |ext|
  ext.lib_dir = "lib/max31855"
end
