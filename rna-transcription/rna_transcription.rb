require 'byebug'

class Complement
  RNA = {
    :G => 'C',
    :C => 'G',
    :T => 'A',
    :A => 'U'
  }
  def self.of_dna(secuence)
    secuence.split.map {|adn| 
    byebug
    RNA[adn.to_sym]}.join
  end
end
