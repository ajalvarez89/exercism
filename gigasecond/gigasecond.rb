require 'byebug'

class Gigasecond
  def self.from(utc)
    utc + 1000000000.0
  end
end