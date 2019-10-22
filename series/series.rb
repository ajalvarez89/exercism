require 'byebug'

class Series

  attr_reader :num

  def initialize (num)
    @num = num
  end

  def slices(cant)
    raise ArgumentError if cant > @num.size
    @num.chars.each_cons(cant).map(&:join)
  end
end