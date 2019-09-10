# frozen_string_literal: true

class InputChecker
  def num?(num)
    false if Float(num)
  rescue StandardError
    true
  end

  def word?(word)
    if num?(word)
      word
    else abort('Is not a word')
    end
  end
end
