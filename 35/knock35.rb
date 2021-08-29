class Knock35
  MAIN_ARRAY = [ 3, 7, 0, 8, 4, 1, 9, 6, 5, 2 ].freeze

  def self.execute
    input = $stdin.gets.chomp.to_i

    result = "array[#{input}] = #{MAIN_ARRAY[input]}"

    $stdout.write(result)
  end
end
