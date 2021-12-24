class MyClass
  def testing_self
    @var = 10
    my_method
  end

  def my_method
    @var = @var + 1
  end
end

obj = MyClass.new
obj.testing_self                       # => 11
obj.instance_eval { @var }             # => 11

# top-level context
self        # => main
self.class  # => Object

class MyClass
  self
end