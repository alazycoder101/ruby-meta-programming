module StringExtension
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '').gsub(/\s+/, '_')
    end

    end

    def to_s
      "hello"
    end
  end
end

using StringExtension
"my *1st* refinement".to_alphanumeric