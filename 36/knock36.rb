class Knock36
  ALLOW_RECEIVING_STDIN_COUNT = 2
  MAIN_ARRAY = [3, 7, 0, 8, 4, 1, 9, 6, 5, 2].freeze

  def self.execute
    input = []
    ALLOW_RECEIVING_STDIN_COUNT.times { input << $stdin.gets.chomp.to_i }

    first_element = MAIN_ARRAY[input[0]]
    second_element = MAIN_ARRAY[input[1]]

    result = "#{first_element} * #{second_element} = #{first_element * second_element}"
    $stdout.write(result)
  end
end
