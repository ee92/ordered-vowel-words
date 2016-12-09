# takes a string and returns it back with only
# words who's vowels are in alphabetical order

def ordered_vowel_words(str)
  words = str.split(" ") 
  vowels = words.map{ |e| e.scan(/[aeiou]/) }
  ordered_vowels = vowels.map{ |e| e.sort }
  index = 0
  while index < words.length
    if vowels[index]!=ordered_vowels[index]
      words.delete_at(index)
    end
    index = index + 1
  end
  return words.join(" ")
end

# string to array (words)
# new array with just vowels (vowels)
# new array with just vowels sorted (ordered_vowels)
# compare vowel arrays at every index
# delete word from words array if vowels don't match
# array or words to string