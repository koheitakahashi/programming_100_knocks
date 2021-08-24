class Knock21
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = nil
    result = "OK" if (6...20).cover?(input)
    $stdout.write(result)
  end
end
