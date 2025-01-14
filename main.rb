# frozen_string_literal: true

require_relative 'lib/fib'
require_relative 'lib/merge_sort'

puts "After applying iterative fibonacci => #{fibs(8)}"

puts ''

puts "After applying recursive fibonacci => #{fibs_rec(8)}"

puts ''

arr = [105, 79, 100, 110]
low = 0
high = arr.length - 1

puts "After applying merge sort algorithm => #{merge_sort(arr, low, high)}"
