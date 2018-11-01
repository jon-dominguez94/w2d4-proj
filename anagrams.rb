def first_anagram?(string, test_str)
  arr = string.chars.permutation(test_str.length)
  arr.each do |possible_match|
    return true if possible_match == test_str.chars
  end
  false
end

p first_anagram?("gizmo", "sal")    #=> false
p first_anagram?("elvis", "lives")    #=> true


def second_anagram?(string, test_str)
  test_str_arr = test_str.chars
  string.chars.each do |ch|
    index = test_str_arr.index(ch)
    return false if index.nil?
    test_str_arr.delete_at(index)
  end
  test_str_arr.empty?
end

p second_anagram?("gizmo", "sal")    #=> false
p second_anagram?("elvis", "lives")    #=> true
