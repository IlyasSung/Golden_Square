class Diary
    def initialize(contents) # contents is a string
        @entry = contents
    end
  
    def read
      # Returns the contents of the diary
      return @entry
    end
  end