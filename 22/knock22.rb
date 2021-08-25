class Knock22
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = nil
    result = "OK" unless (-10...10).cover?(input)
    $stdout.write(result)
  end
end
