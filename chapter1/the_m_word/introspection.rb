class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

my_object = Greeting.new("Hello")
my_object.class                          # =>  Greeting
# The "false" argument here means: ignore inherited methods
my_object.class.instance_methods(false)  # => [:welcome]
my_object.instance_variables             # => [:@text]

