def permutation_anagrams?(str)
  letter_count = {}
  str.each_char do |c|
    letter_count[c] ||= 0
    letter_count[c] += 1
  end

  letter_count.values.select {|val| val.odd?}.count <= 1
end

permutation_anagrams?("")
