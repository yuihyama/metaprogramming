#!/usr/bin/env ruby

class String
  alias_method :next_alpha, :succ

  def next_alpha
    succ
  end
end

p 'A'.next_alpha # => "B"
puts 'A'.next_alpha # => B
