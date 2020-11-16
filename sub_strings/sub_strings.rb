def substrings(string, dictionary)
  word_count = {}
  string.split(' ').each do |word|
    dictionary.each do |vocab|
      if word.downcase.include?(vocab)
        word_count.has_key?(vocab) ? word_count[vocab] += 1 : word_count[vocab] = 1
       end
    end
  end
  word_count
end