class Knock82
  STEP_NUMBER = 15
  FIRST_STEP_ELEMENT = [1].freeze
  FIRST_STEP_COUNT = 0
  FIRST_AND_LAST_STEP_ELEMENT_IN_STEP = 1
  PRECEDING_STEP_COUNT = 1

  def self.execute
    new.execute
  end

  def initialize
    @numbers = []
  end

  def execute
    STEP_NUMBER.times do |i|
      next @numbers << FIRST_STEP_ELEMENT if i == FIRST_STEP_COUNT
      @numbers << add_pascal_triangle_elements(i, @numbers)
    end

    output_results(@numbers)
  end

  private

    def add_pascal_triangle_elements(add_count, numbers)
      nested_numbers = []
      add_count.times do |nested_index|
        next nested_numbers << FIRST_AND_LAST_STEP_ELEMENT_IN_STEP if nested_index == FIRST_STEP_COUNT
        next nested_numbers << FIRST_AND_LAST_STEP_ELEMENT_IN_STEP if nested_index == (add_count - PRECEDING_STEP_COUNT)

        nested_numbers << (numbers[add_count - PRECEDING_STEP_COUNT][nested_index - PRECEDING_STEP_COUNT] + numbers[add_count - PRECEDING_STEP_COUNT][nested_index])
      end

      nested_numbers
    end

    def output_results(elements)
      elements.each { |number| $stdout.write("#{number.join(" ")}\n") }
    end
end
