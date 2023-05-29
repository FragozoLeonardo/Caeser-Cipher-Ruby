def substrings(string, dictionary)
  counts = Hash.new(0)

  dictionary.each do |word|
    counts[word] = string.downcase.scan(word).length
  end

  counts
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
string = "Howdy partner, sit down! How's it going?"

result = substrings(string, dictionary)
puts result
