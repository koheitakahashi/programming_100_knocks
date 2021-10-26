class Knock59
  MATRIX_SIZE = 9
  MATRIX_ROW_SIZE = 3

  def self.execute
    new.execute
  end

  def initialize
    @input = $stdin.readlines
  end

  def execute
    sums = []
    MATRIX_SIZE.times do |i|
      taken_elements = formatted_input.map { |input| input[i] }
      sums << taken_elements.sum
    end

    output = sums.each_slice(MATRIX_ROW_SIZE).map { |array| array.join("\t") }.join("\t\n")
    $stdout.write("#{output}\n")
  end

  private
    attr_reader :input

    # return [[1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 3, 4, 5, 6, 7, 8, 9, 1]]
    def formatted_input
      input.map { |string| string.split(' ').map(&:to_i) }.flatten.each_slice(MATRIX_SIZE).to_a
    end
end
