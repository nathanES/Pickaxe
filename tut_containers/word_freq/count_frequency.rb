def count_frequency(word_list)
    counts = Hash.new(0)
    word_list.each do |word|
        counts[word] +=1
    end
    counts
end
#p count_frequency(["I", "like", "Ruby", "it", "is", "usually", "it", "optimized", "for", "programmer", "happiness"])
