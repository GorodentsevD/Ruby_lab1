# frozen_string_literal: true

require_relative 'palindrome/palindrome'
require_relative 'input_checker/input_checker'

checker = InputChecker.new
puts 'Input word'
word = checker.word?(gets.chomp)
puts Palindrome.new.palindrome?(word)
