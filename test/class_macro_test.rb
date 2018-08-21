#!/usr/bin/env ruby

require 'minitest/autorun'
require './class_macro'

class ClassMacroTest < Minitest::Test
  def test_class_macro
    assert_equal 1, MyClass.my_macro(1)
    assert_equal '1', MyClass.my_macro('1')

    assert_output("1\n") { p MyClass.my_macro(1) }
    assert_output("1\n") { puts MyClass.my_macro(1) }
    assert_output("\"1\"\n") { p MyClass.my_macro("1") }
    assert_output("1\n") { puts MyClass.my_macro("1") }
  end
end
