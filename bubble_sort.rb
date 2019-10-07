# frozen_string_literal: true

# Project 1: Bubble Sort
# bubble_sort: Takes an array and returns a sorted array using the bubble sort methodology
def bubble_sort(arr)
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |i|
      next if arr[i] <= arr[i + 1]   
      temp = arr[i + 1]
      arr[i + 1] = arr[i]
      arr[i] = temp
      swap = true
    end
  end
  arr
end

# bubble_sort_by: Takes an array and returns a sorted array using the bubble sort methodology
# and the condition of the block
def bubble_sort_by(arr)
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |i|
      next if yield(arr[i], arr[i + 1]) <= 0
      temp = arr[i + 1]
      arr[i + 1] = arr[i]
      arr[i] = temp
      swap = true
    end
  end
  arr
end
