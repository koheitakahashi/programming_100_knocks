class Knock80
  MINIMUM_COMMON_DENOMINATOR = 2

  def self.execute
    new.execute
  end

  def initialize
    @input = $stdin.gets.chomp.split(' ').map(&:to_i)
  end

  def execute
    first_number_mods = take_factors_from(first_input_number)
    last_number_mods = take_factors_from(last_input_number)

    output_text = (first_number_mods & last_number_mods).count.zero? ? "互いに素ではない" : "互いに素"

    $stdout.write(output_text)
  end

  private
    attr_reader :input

    def first_input_number
      input.first
    end

    def last_input_number
      input.last
    end

    def take_factors_from(number)
      (MINIMUM_COMMON_DENOMINATOR..number).select { |num| (number % num).zero? }
    end
end
