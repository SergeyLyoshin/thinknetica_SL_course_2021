hash = {}

alphabet = ('a'..'z').to_a

vowels = ['a' ,'e' ,'i' ,'o' ,'u']

alphabet.each.with_index(1) do |letter, index|
  vowels.each do |vowel|
    if letter == vowel
      hash[vowel] = index
    end
  end
end

puts hash