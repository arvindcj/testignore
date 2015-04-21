module TestIgnore
  class File
    def initialize file='.testignore'
      @testignore_file = file
      @ignore_tags = []
      @rspec_ignore_tags_list = ''
    end

    def read_file
      open(@testignore_file, "rb").each_line do |line|
        @ignore_tags << line.chomp if !line.match /#/
      end
    end

    def rspec_ignore_tags
      @ignore_tags.each do |tag|
        @rspec_ignore_tags_list << " --tags ~#{tag}" 
      end
      @rspec_ignore_tags_list
    end

    def  cucumber_ignore_tags
      ""
    end

    def  minitest_ignore_tags
      ""
    end

    :private
    def ignore_tag
    end
  end
end
