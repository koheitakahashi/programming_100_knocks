class Knock40
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = input.odd? ? "#{input} is odd." : "#{input} is even."

    $stdout.write(result)
  end
end
