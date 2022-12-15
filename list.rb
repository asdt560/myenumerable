require 'myenumerable'

# This class is a list with an each method which include the MyEnumerable module
class MyList
  include MyEnumerable

  def initialize(*nums)
    @list = nums.flatten
  end

  def each
    @list.each { |num| puts num }
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }

list.all? { |e| e > 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

list.filter(&:even?)
