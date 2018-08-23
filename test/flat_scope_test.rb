#!/usr/bin/env ruby

require 'minitest/autorun'
require './flat_scope'

class FlatScopeTest < Minitest::Test
  def test_flat_scope
    assert_equal "hello, world", MyClass.new.my_method

    assert_output("\"hello, world\"\n") { p MyClass.new.my_method }
    assert_output("hello, world\n") { puts MyClass.new.my_method }
  end
end
