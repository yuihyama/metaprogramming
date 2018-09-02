#!/usr/bin/env ruby

require 'minitest/autorun'
require './ghost_method'

class GhostMethodTest < Minitest::Test
  def setup
    @obj = MyClass.new
  end

  def test_ghost_method
    assert_equal 'MY_GHOST_METHOD', @obj.my_ghost_method

    assert_output("\"MY_GHOST_METHOD\"\n") { p @obj.my_ghost_method }
    assert_output("MY_GHOST_METHOD\n") { puts @obj.my_ghost_method }
  end
end
