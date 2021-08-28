class Knock34
  def self.execute
    input = $stdin.gets.chomp.to_i

    numbers = (1..9).to_a
    numbers.reject! { _1 == input || _1 == (input + 1)}
    result = numbers.join("\n")

    $stdout.write(result)
  end
end
