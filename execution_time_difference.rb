
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
