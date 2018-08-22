#!/usr/bin/env ruby

require 'minitest/autorun'
require './dynamic_dispatch'

class DynamicDispatchTest < Minitest::Test
  def setup
    @obj = MyClass.new
  end

  def test_dynamic_dispatch
    assert_equal 'abcabcabc', @obj.send(:my_method, 'abc')
    assert_equal 9, @obj.send(:my_method, 3)

    assert_output("\"abcabcabc\"\n") { p @obj.send(:my_method, 'abc') }
    assert_output("abcabcabc\n") { puts @obj.send(:my_method, 'abc') }
    assert_output("9\n") { puts @obj.send(:my_method, 3)}
  end
end
