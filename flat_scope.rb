#!/usr/bin/env ruby

hello_world = 'hello, world'

MyClass = Class.new do
  puts hello_world

  define_method :my_method do
    hello_world
  end
end
