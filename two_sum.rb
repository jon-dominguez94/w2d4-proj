require 'byebug'

def bad_two_sum?(arr, target)
  arr.each.with_index do |n, idx|
    (idx + 1...arr.length).each do |j|
      return true if n + arr[j] == target
    end
  end
  false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false
# time complexity of bad_two_sum? : O(n ** 2)

def okay_two_sum?(arr, target)
  sorted_arr = arr.sort
  sorted_arr.each.with_index do |el, idx|
    target_pair = target - el
    if sorted_arr[idx+1..-1].bsearch{|n| n >= target_pair } == target_pair
      p target_pair
      return true
    end
  end
  false
end

arr = [0, 1,2, 5, 11, 33, 24, 56, 74, 2, 4, 17, 7]
p okay_two_sum?(arr, 99) # => should be false
p okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr,target) 
  value_hash = {}
  arr.each.with_index do |el, idx|
    value_hash[el] = idx
  end
  value_hash.each do |k,v|
    target_pair = target - k    
    return true if value_hash.key?(target_pair) && value_hash[target_pair] != v
  end
  false
end

arr = [0, 1,2, 5, 11, 33, 24, 56, 74, 8, 4, 17, 7]
p two_sum?(arr, 99) # => should be false
p two_sum?(arr, 10) # => should be true

