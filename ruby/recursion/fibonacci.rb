# Memoized fibonacci
# Assumes integer input > 0

class Fibonacci
  attr_accessor :hash

  def initialize
    @hash = {}
  end

  def fib(n)
    if @hash[n] == nil
      if n == 1 || n == 2
        @hash[n] = 1
      else
        @hash[n] = fib(n-1) + fib(n-2)
      end
    end

    @hash[n]
  end
end


p "Tests"

fibInstance = Fibonacci.new
start = 1

10.times do
  p "fibInstance.fib(#{start}): #{fibInstance.fib(start)}"
  start += 1
end
