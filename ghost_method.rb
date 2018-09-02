#!/usr/bin/env ruby

class MyClass
  def method_missing(name, *args)
    name.to_s.upcase
  end
end
