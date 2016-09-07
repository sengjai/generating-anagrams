# Place your solutions here
def anagrams_for(string,dictionary)
	list = []

	dictionary.each do |word|
		if canonical(word) == canonical(string)
			list << word
		end
	end
	return list.to_s
end

def canonical(word)
	#Magic goes here
	return word.downcase.split('').sort #downcase all letters, .split('') or .chars
end





dictionary = ['acres','cares','Cesar','races','smelt','melts','etlsm']

puts anagrams_for('acres', dictionary)
puts anagrams_for('ACRES', dictionary)
puts anagrams_for('Cesar', dictionary)

puts anagrams_for('sacre', dictionary)

puts anagrams_for('etlsm', dictionary)

puts anagrams_for('unicorn', dictionary)
