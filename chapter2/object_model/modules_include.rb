module M1
  def m1_method
    puts "M1 method"
  end
end

class C
  include M1
end

class D < C; end

D.ancestors # => [D, C, M1, Object, Kernel, BasicObject]

class C2
  prepend M2
end

class D2 < C2; end

D2.ancestors # => [D2, M2, C2, M1, Object, Kernel, BasicObject]