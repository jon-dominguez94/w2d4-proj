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

def third_anagram?(string, test_str)
  string.chars.sort == test_str.chars.sort
end

p third_anagram?("gizmo", "sal")    #=> false
p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(string, test_str)
  first_string_hash = Hash.new(0)
  second_string_hash = Hash.new(0)
  string.chars.each { |ch| first_string_hash[ch] += 1}
  test_str.chars.each { |ch| second_string_hash[ch] += 1}
  
  first_string_hash.each do |k,v|
    return false unless second_string_hash.key?(k)
    return false unless second_string_hash[k] == v
  end
  true
end

p fourth_anagram?("gizmo", "sal")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true

#fourth_anagram? time complexity is O(n) 