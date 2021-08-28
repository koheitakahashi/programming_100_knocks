class Knock33
  def self.execute
    input = $stdin.gets.chomp.to_i

    numbers = (1..9).to_a
    numbers.delete(input)
    result = numbers.join("\n")

    $stdout.write(result)
  end
end
