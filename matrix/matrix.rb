class Matrix
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def rows
    @string.split("\n").map{|row| row.split(' ').map(&:to_i)}
  end

  def columns
    rows.transpose
  end
end
