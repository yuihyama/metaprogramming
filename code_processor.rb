#!/usr/bin/env ruby

def code_processor
  File.readlines('code_processor.txt').each do |line|
    puts "#{line.chomp} # => #{eval(line)}"
  end
end
