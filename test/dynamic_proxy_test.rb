#!/usr/bin/env ruby

require 'minitest/autorun'
require './dynamic_proxy'

class DynamicProxyTest < Minitest::Test
  def setup
    @obj1 = MyDynamicProxy.new('A')
    @obj2 = MyDynamicProxy.new('Hi')
  end

  def test_dynamic_proxy
    assert_equal 'B', @obj1.succ
    assert_equal 'iH', @obj2.reverse

    assert_output("\"B\"\n") { p @obj1.succ }
    assert_output("B\n") { puts @obj1.succ }
    assert_output("\"iH\"\n") { p @obj2.reverse }
    assert_output("iH\n") { puts @obj2.reverse }
  end
end
