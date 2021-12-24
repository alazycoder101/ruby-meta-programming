def to_alphanumeric(s)
  s.gsub(/[^\w\s]/, '').gsub(/\s+/, '_')
end

require 'test/unit'
class ToAlphanumericTest < Test::Unit::TestCase
  def test_strip_non_alphanumeric_characters
    assert_equal '3_D_Movie', to_alphanumeric('3-D Movie')
  end
end

# global change
class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '').gsub(/\s+/, '_')
  end
end

class StringExtensionTest < Test::Unit::TestCase
  def test_strip_non_alphanumeric_characters
    assert_equal '3_D_Movie', '3-D Movie'.to_alphanumeric
  end
end

3.times do
  class C
    puts "Hello"
  end
end


class D
  def x; 'x'; end
end

class D
  def y; 'y'; end
end

obj = D.new
obj.x
obj.y