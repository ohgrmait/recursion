# frozen_string_literal: true

def fibs_rec(num)
  return [0] if num == 1
  return [0, 1] if num == 2

  fib_arr = fibs_rec(num - 1)
  fib_arr << (fib_arr[num - 3] + fib_arr[num - 2])
  fib_arr
end

p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(3)
p fibs_rec(4)
p fibs_rec(5)
p fibs_rec(6)
p fibs_rec(7)
p fibs_rec(8)

def fibs(num) # rubocop:disable Metrics/MethodLength
  return [0] if num == 1
  return [0, 1] if num == 2

  fib_arr = [0, 1]
  fib1 = fib_arr.first
  fib2 = fib_arr.last

  3.upto(num) do
    next unless num >= 3

    result = fib1 + fib2
    fib_arr << result
    fib1 = fib2
    fib2 = result
  end

  fib_arr
end

p fibs(1)
p fibs(2)
p fibs(3)
p fibs(4)
p fibs(5)
p fibs(6)
p fibs(7)
p fibs(8)
