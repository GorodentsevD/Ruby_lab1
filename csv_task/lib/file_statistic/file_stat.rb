# frozen_string_literal: true

require 'csv'

class Statistic
  @@file = []

  def initialize(file_path)
    CSV.foreach(file_path, col_sep: ';') do |row|
      @@file << row[1].to_f
    end
  end

  def file_max
    @@file.max
  end

  def file_min
    @@file.min
  end

  def file_average
    print @@file.methods
    @@file.sum / @@file.size
  end

  def corrected_dispersion
    @@file.inject { |sum, el| sum + el }.to_f / (@@file.size - 1)
  end
end

print %(
Choose the number of statistics you want
    1. maximum
    2. minimum
    3. average value
    4. corrected sample variance
Enter: )
statistic = gets.chomp
case statistic
when '1'
  puts Statistic.new('file.csv').file_max
when '2'
  puts Statistic.new('file.csv').file_min
when '3'
  puts Statistic.new('file.csv').file_average
when '4'
  puts Statistic.new('file.csv').corrected_dispersion
else
  puts 'Incorrect input'
end
