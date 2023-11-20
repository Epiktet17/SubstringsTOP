dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
wo = "Howdy partner, sit down! How's it going?"
def str_exercise(sentence, dict)
  array_sentence = sentence.gsub(/[^a-zA-Z0-9\s]/, '').downcase.split #splits the words and puts them in an array

  a = Hash.new(0)

  array_sentence.each do |word|
    dict.each do |word_dict|

      if word.include?(word_dict)
        a[word_dict] += 1
      end
    end  
  end
  puts a
end
str_exercise("below",dictionary)