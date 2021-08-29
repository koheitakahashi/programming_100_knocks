class Knock38
  MAIN_ARRAY = [3, 7, 0, 8, 4, 1, 9, 6, 5, 2].freeze

  def self.execute
    plane_result = []
    (1..10).each do |i|
      next plane_result << MAIN_ARRAY[0] if i == 1
      taken_element_index = plane_result[i - 2]
      plane_result << MAIN_ARRAY[taken_element_index]
    end

    result = plane_result.join("\n")

    $stdout.write(result)
  end
end
