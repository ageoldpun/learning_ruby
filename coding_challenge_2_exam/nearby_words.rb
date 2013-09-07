require "test/unit"
include Test::Unit::Assertions

def one_off_words(str, word_list)
  str = str.split(//)
  
  word_list.select do |word|
    counter = 0
    word.split(//).each_with_index do |letter, index|
      if word[index] == str[index]
        counter = counter + 1
      end
    end
    counter == str.count - 1
  end
end

WORDS = ["door", "moot", "boot", "boots"]
assert_equal ["door", "moot"], one_off_words("moor", WORDS)
