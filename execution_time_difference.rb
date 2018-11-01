
def my_min(array)
  smallest = false
  smallest_num = 0

    array.each do |el1|
      array.each do |el2|
        if el1 < smallest_num
          smallest_num = el1
        elsif smallest_num > el2
          smallest_num = el2
        end
      end
    end
  smallest_num
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)

#time complexity : quadratic O(n**2)

def better_my_min(array)
  smallest = array[0]
  array[1..-1].each do |el|
    smallest = el if el < smallest
  end
  smallest
end

p better_my_min(list)

#time complexity: linear: O(n)

def largest_contiguous_subsum(array)
  sub_arrays = []
  i = 1
  until i == array.length + 1
    array.each_cons(i) do |sub|
      sub_arrays << sub
    end
    i += 1
  end
  sub_arrays.map {|sub| sub.reduce(:+)}.max
end

list = [5,3,-7]
p largest_contiguous_subsum(list)


def better_largest_contiguous_subsum(array)
  largest_sum = array[0]
  i = 1
  until i == array.length + 1
    array.each_cons(i) do |sub|
      sum = sub.reduce(:+)
      largest_sum = sum if largest_sum < sum
    end
    i += 1
  end
  largest_sum
end

p better_largest_contiguous_subsum(list)


