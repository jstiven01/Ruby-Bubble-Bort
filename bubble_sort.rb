# Project 1: Bubble Sort
# bubble_sort: Takes an array and returns a sorted array using the bubble sort methodology
def bubble_sort(arr)
	 swap = true
	 while swap
	   swap = false
	   for i in 1...arr.length() do
		   if arr[i-1] > arr[i]
			   temp = arr[i]
			   arr[i] = arr[i-1]
			   arr[i-1] = temp
			   swap = true
		   end
	   end
	 end
	 return arr
end

puts bubble_sort([4,3,78,2,0,2])

# bubble_sort_by: Takes an array and returns a sorted array using the bubble sort methodology and the condition of the block
def bubble_sort_by(arr)
  swap = true
	while swap
		swap = false
		for i in 1...arr.length() do
			if yield(arr[i-1], arr[i]) > 0
				temp = arr[i]
				arr[i] = arr[i-1]
				arr[i-1] = temp
				swap = true
			end
		end
	end
    return arr
end

sortedarray = bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end
puts sortedarray

sortedarray = bubble_sort_by([5,3,2]) do |left, right|
  left - right
end

puts sortedarray