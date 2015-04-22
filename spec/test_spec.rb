require "testignore"

 ig = TestIgnore::IgnoreFile.new 'C:\Users\ajanakir\VersionControl\testignore\Gemfile'
# puts ig.rspec_ignore_tags

#puts File.file? 'C:\Users\ajanakir\VersionControl\testignore\Gemfile'
puts ig.inspect