require 'testignore'

q = TestIgnore::File.new
q.read_file
puts q.rspec_ignore_tags