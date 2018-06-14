def binary_search(item, sorted_array)
  low = 0
  high = sorted_array.length - 1

  while low <= high
    mid = ((high - low) / 2.0).ceil + low
    if item > sorted_array[mid]
      low  = mid + 1
    elsif item < sorted_array[mid]
      high = mid - 1
    else
      return mid
    end
  end
end

a = [10,22,45,99,100,300,500]

p binary_search(10, a)
p binary_search(22, a)
p binary_search(45, a)
p binary_search(99, a)
p binary_search(100, a)
p binary_search(500, a)
p binary_search(50, a) # expect nil
