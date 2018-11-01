def inefficient_anagram(string, test_str)
  arr = string.chars.permutation(test_str.length)
  arr.each do |possible_match|
    return true if possible_match == test_str.chars
  end
  false
end

p inefficient_anagram("gizmo", "sally")    #=> false
p inefficient_anagram("elvis", "lives")    #=> true