class Knock37
  ALLOW_RECEIVING_STDIN_COUNT = 1
  MAIN_ARRAY = [3, 7, 0, 8, 4, 1, 9, 6, 5, 2].freeze

  def self.execute
    input = []
    ALLOW_RECEIVING_STDIN_COUNT.times { input << $stdin.gets.chomp.to_i }

    first_taken_element = MAIN_ARRAY[input.first]
    result = "value = #{MAIN_ARRAY[first_taken_element]}"

    $stdout.write(result)
  end
end
