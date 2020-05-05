def sum_to(n)
  return nil if n < 0
  return n if n <= 1
  n + sum_to(n-1)
end

# p sum_to(5)  # => returns 15
# p sum_to(1)  # => returns 1
# p sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil

def add_numbers(arr)
  return arr.first if arr.length <= 1
  arr[0] + add_numbers(arr.drop(1))
end

p add_numbers([1,2,3,4]) # => returns 10
p add_numbers([3]) # => returns 3
p add_numbers([-80,34,7]) # => returns -39
p add_numbers([]) # => returns nil