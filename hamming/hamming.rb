=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
require 'byebug'

class Hamming

  def self.compute(secuence_one,secuence_two)
    raise ArgumentError if secuence_one.length != secuence_two.length

    hamming_result = 0

    secuence_one.each_char.with_index do |nucleotide, index|
      hamming_result += 1 if nucleotide != secuence_two[index]
    end
    hamming_result
  end

  # def self.compute(secuence_one,secuence_two)
  #   raise ArgumentError if secuence_one.length != secuence_two.length
  #   index = 0
  #   result = 0

  #   while index < secuence_one.length
  #     if secuence_one[index] != secuence_two[index]
  #       result += 1
  #     end
  #     index += 1
  #   end
  #   return result
  # end
end


