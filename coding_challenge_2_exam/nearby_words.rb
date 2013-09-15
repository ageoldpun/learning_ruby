require "test/unit"
include Test::Unit::Assertions

def one_off_words(str, word_list)
  word_list.select do |word|
    (word.chars - str.chars).length == 1
  end
end

WORDS = ["door", "moot", "boot", "boots"]
assert_equal ["door", "moot"], one_off_words("moor", WORDS)
