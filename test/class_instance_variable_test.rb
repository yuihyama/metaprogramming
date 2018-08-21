#!/usr/bin/env ruby

require 'minitest/autorun'
require './class_instance_variable'

class ClassInstanceVariableTest < Minitest::Test
  def test_class_instance_variable
    assert_equal 'hello, world', MyClass.hello_world

    assert_output("\"hello, world\"\n") { p MyClass.hello_world}
    assert_output("hello, world\n") { puts MyClass.hello_world}
  end
end
