# frozen_string_literal: true

def merge(arr, low, mid, high) # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
  temp = []

  left = low
  right = mid + 1

  while left <= mid && right <= high
    if arr[left] < arr[right]
      temp << arr[left]
      left += 1
    else
      temp << arr[right]
      right += 1
    end
  end

  while left <= mid
    temp << arr[left]
    left += 1
  end

  while right <= high
    temp << arr[right]
    right += 1
  end

  (low..high).each do |i|
    arr[i] = temp[i - low]
  end

  arr
end

def merge_sort(arr, low, high)
  return unless low < high

  mid = (low + high) / 2
  merge_sort(arr, low, mid)
  merge_sort(arr, mid + 1, high)
  merge(arr, low, mid, high)
end
