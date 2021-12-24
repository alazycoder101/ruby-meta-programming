module Printable
  def print
    "printable"
  end

  def prepare_cover
    "cover prepared"
  end
end

module Document
    def print_to_screen
        prepare_cover
        format_for_screen
    end
    
    def format_for_screen
        "formatted for screen"
    end

    def print
    end
end

class Book
  include Document
  include Printable
end

b = Book.new
b.print_to_screen