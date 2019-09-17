# frozen_string_literal: true

class Palindrome
  def palindrome?(word)
    word == word.reverse
  end
end
