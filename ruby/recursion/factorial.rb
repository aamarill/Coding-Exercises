def factorial(n)
  if n < 0
    # n less than zero is invalid
    -1
  elsif n == 0
    1
  else
    n * factorial(n - 1)
  end
end

p "Tests"
i = -2
10.times do
  p "factorial(#{i}): #{factorial(i)}"
  i += 1
end
