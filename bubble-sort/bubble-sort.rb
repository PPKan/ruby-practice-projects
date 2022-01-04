=begin
Build a method #bubble_sort that takes an array and returns 
a sorted array. It must use the bubble sort methodology 
(using #sort would be pretty pointless, wouldn’t it?).
=end

def bubble_sort(array)

    array.each_with_index do |value1, index1|
        array.each_with_index do |value2, index2|
            
            next if index2 + 1 == array.length

            if array[index2] > array[index2 + 1]
                array[index2], array[index2 + 1] = array[index2 + 1], array[index2]
            end
        end
    end
end

result = bubble_sort([4,3,78,2,0,2])

puts "expected: [0,2,2,3,4,78]"
puts "get: #{result}"