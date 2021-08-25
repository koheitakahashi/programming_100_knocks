class Knock23
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = (-5...10).cover?(input) ? "OK" : "NG"

    $stdout.write(result)
  end
end
