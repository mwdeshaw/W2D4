

#my_min
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def phase_one(arr)
  min = arr[0]
  arr.each do |ele1|
    arr.each do |ele2|
      if ele1 < ele2 && ele1 < min
        min = ele1 
      end 
    end
  end

  min
end
# p phase_one(list)
#complexity: O(n**2)

def phase_two(arr)
  min = arr[0]
  arr.each do |ele|
    if ele < min
      min = ele
    end
  end

  min
end
# p phase_two(list)
#complexity: O(n)

#largest_continuous_sum
 list1 = [5, 3, -7]
 list2 = [2, 3, -6, 7, -6, 7]
 list3 = [-5, -1, -3]

def lcs_phase_one(arr)
  arr_of_arrays = []
  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
      sub_arr = arr[i..j]
      arr_of_arrays << sub_arr
    end
  end
  max = arr_of_arrays[0].sum
  arr_of_arrays.each do |sub_arr|
    if sub_arr.sum > max
      max = sub_arr.sum
    end
  end 

  max
end
#   p lcs_phase_one(list1)
#   p lcs_phase_one(list2)
#   p lcs_phase_one(list3)
#complexity n + n**2 O(n**2)


def lcs_phase_two(arr)
  return arr.max if arr.max < 0 #edge case

  current = 0
  largest = 0

  arr.each do |ele|
    current += ele
    current = 0 if current < 0 #bookmark
    largest = current if largest < current
  end

  largest
end
# p lcs_phase_two(list1) #8
# p lcs_phase_two(list2) #8
# p lcs_phase_two(list3) #-1
#Kadane's Algorithm with an edge case