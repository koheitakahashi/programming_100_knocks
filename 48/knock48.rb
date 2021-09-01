class Knock48
  def self.execute
    new.execute
  end

  # 野暮ったい
  def execute
    input_number = $stdin.gets.chomp.to_i

    calculation_result = input_number

    count = 1
    while calculation_result >= 2 do
      if calculation_result.odd?
        calculation_result = (calculation_result * 3) + 1
        $stdout.write("#{count}: #{calculation_result}\n")
      else
        calculation_result = calculation_result / 2
        $stdout.write("#{count}: #{calculation_result}\n")
      end
      count += 1
    end
  end
end
