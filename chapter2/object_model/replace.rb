def replace(array, original, replacement)
  array.map { |element| element == original ? replacement : element }
end

def test_replace
  original = [1, 2, 3, 4]
  replaced = replace(original, 2, 'two')
  assert_equal [1, 'two', 3, 4], replaced
end

class Array
  def replace(original, replacement)
    map { |element| element == original ? replacement : element }
  end
end