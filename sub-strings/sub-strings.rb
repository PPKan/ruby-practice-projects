
=begin
Implement a method #substrings that takes a word as the first argument 
and then an array of valid substrings (your dictionary) as the second 
argument. It should return a hash listing each substring (case insensitive) 
that was found in the original string and how many times it was found.   
=end

def substrings(strings, dictionary)
    
    result = Hash.new(0)

    strings = strings.downcase

    strings = strings.split(" ")

    strings.each do |string|
        dictionary.each do |word|
            if string.include?(word)
                result[word] += 1
            end
        end
    end

    result.sort.to_h

end


dictionary = ["below","down","go","going","horn","how","howdy",
    "it","i","low","own","part","partner","sit"]

result1 = substrings("below", dictionary)
result2 = substrings("Howdy partner, sit down! How's it going?", dictionary)

puts "### result1 ###"
puts 'expected output { "below" => 1, "low" => 1 }'
puts "my output: #{result1}"
puts "### result2 ###"
puts 'expected output { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }'
puts "my output: #{result2}"