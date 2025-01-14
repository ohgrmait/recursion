# frozen_string_literal: true

def fibs_rec(num)
  return [0] if num == 1
  return [0, 1] if num == 2

  fib_arr = fibs_rec(num - 1)
  fib_arr << (fib_arr[num - 3] + fib_arr[num - 2])
  fib_arr
end

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
