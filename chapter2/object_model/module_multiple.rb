module M1; end

module M2
  include M1
end

module M3
  prepend M1
  include M2
end

M3.ancestors             # => [M3, M1, M2, Object, Kernel, BasicObject]