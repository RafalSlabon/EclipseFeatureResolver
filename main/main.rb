require "feature"

Dir.glob("/home/rafal/workspace/**/feature.xml") do |entry|
  feature = Feature.new(entry)
  puts feature.required_plugins
  puts feature.plugins
end