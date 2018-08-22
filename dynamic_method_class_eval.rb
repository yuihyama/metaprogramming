#!/usr/bin/env ruby

class MyClass; end

MyClass.class_eval do
  define_method :my_method do |arg|
    arg.succ
  end
end
