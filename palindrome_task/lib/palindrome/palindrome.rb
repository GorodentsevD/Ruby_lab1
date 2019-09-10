# frozen_string_literal: true

class Palindrome
  define_method(:palindrome?) { |word| word == word.reverse }
end
