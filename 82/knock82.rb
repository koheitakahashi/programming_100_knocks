class Knock82
  STEP_NUMBER = 15
  FIRST_AND_LAST_ELEMENT_IN_STEP = 1
  FIRST_STEP_INDEX = 0
  PRECEDING_COUNT = 1

  def self.execute
    new.execute
  end

  def initialize
    @numbers = []
  end

  def execute
    STEP_NUMBER.times do |step|
      @numbers << build_pascal_triangle_row(step_count: step)
    end

    output_results(@numbers)
  end

  private

    def build_pascal_triangle_row(step_count:)
      (FIRST_STEP_INDEX..step_count).map do |index|
        # 最初と最後の要素には 1 を入れる
        next FIRST_AND_LAST_ELEMENT_IN_STEP if index == FIRST_STEP_INDEX || index == step_count
        calculate_current_element_from_numbers(step_count: step_count, position: index)
      end
    end

    def calculate_current_element_from_numbers(step_count:, position:)
      # ある段のある要素は、前の段の1つ前のindexと、前の弾の今のindexの要素を足したものである
      if (previous_step = @numbers[step_count - PRECEDING_COUNT])
        previous_step[position - PRECEDING_COUNT] + previous_step[position]
      end
    end

    def output_results(elements)
      elements.each { |number| $stdout.write("#{number.join(" ")}\n") }
    end
end
