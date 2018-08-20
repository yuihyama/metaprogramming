#!/usr/bin/env ruby

require 'test/unit'
require './around_alias'

class AroundAliasTest < Test::Unit::TestCase
  def test_next_alpha
    assert_equal 'B', 'A'.next_alpha
  end
end

# Minitest:
#
# require 'minitest/autorun'
#
# class AroundAliasTest < Minitest::Test
#   def test_next_alpha
#     assert_equal 'B', 'A'.next_alpha
#   end
# end
