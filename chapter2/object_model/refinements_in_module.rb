module StringExtension
  refine String do
    def reverse
      "esrever"
    end
  end
end

module StringStuff
  using StringExtension
  "hello".reverse # => "esrever"
end

"my_string".reverse # => "gnirts_ym"