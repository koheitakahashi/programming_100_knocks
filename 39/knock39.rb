class Knock39
  MAIN_ARRAY = [3, 7, 0, 8, 4, 1, 9, 6, 5, 2].freeze
  LOOP_RANGE = (0...9)

  def self.execute
    plane_result = LOOP_RANGE.map { |i| MAIN_ARRAY[i] - MAIN_ARRAY[i + 1] }

    format_result = plane_result.join("\n")
    $stdout.write(format_result)
  end
end
