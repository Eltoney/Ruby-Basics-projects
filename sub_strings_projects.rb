def sub_string_count(sent, dict)
  number_occurence = Hash.new()
  for word in dict
    cnt = 0
    (0...sent.length).each do |idx|
      ed = [sent.length, idx + word.length]
      cur = sent[idx...ed.min]
      if cur == word
        cnt += 1
      end
    end
    if cnt > 0
        number_occurence[word] = cnt
    end
  end
  number_occurence
  
end

p sub_string_count("ABCA" , ['A'])

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p sub_string_count("below", dictionary)
 
p sub_string_count("Howdy partner, sit down! How's it going?", dictionary)
