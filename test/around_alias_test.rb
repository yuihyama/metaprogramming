#!/usr/bin/env ruby

require 'minitest/autorun'
require './around_alias'

class AroundAliasTest < Minitest::Test
  def test_next_alpha
    assert_equal 'B', 'A'.next_alpha
    assert_equal 'C', 'B'.next_alpha
    assert_equal 'b', 'a'.next_alpha
    assert_equal 'c', 'b'.next_alpha

    assert_output("\"B\"\n") { p 'A'.next_alpha }
    assert_output("B\n") { puts 'A'.next_alpha }
    assert_output("C\n") { puts 'B'.next_alpha }
    assert_output("b\n") { puts 'a'.next_alpha }
    assert_output("c\n") { puts 'b'.next_alpha }
  end
end

# Test::Unit
# require 'test/unit'
# class AroundAliasTest < Test::Unit::TestCase
#   def test_next_alpha
#     assert_equal 'B', 'A'.next_alpha
#   end
# end
