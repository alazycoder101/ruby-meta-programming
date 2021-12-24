class C
  def public_method
    self.private_method
  end

  def public_method2
    private_method
  end

  private

  def private_method; end
end

c.new.public_method2
c.new.public_method

# top-level context
self        # => main
self.class  # => Object
