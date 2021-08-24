class No20
  def self.execute
    input = $stdin.gets.chomp.split(",").map(&:to_i)

    first_result = (input[0] / input[1]).to_i
    second_result = first_result * input[1]

    result = "result: #{first_result}\nresult: #{second_result}"

    $stdout.write(result)
  end
end

