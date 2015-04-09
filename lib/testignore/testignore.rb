module TestIgnore
  class File
    def initialize file
      @testignore_file = file
    end

    def read_file
      file = open(@testignore_file, "w")
      file.
        file.close
    end

    def rspec_ignore_tags
      "--tags "
    end

    def  cucumber_ignore_tags
      ""
    end

    :private
    def ignore_tag
    end
  end
end
