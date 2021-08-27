class Knock30
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = nil
    result = "*" * input if input > 0

    $stdout.write("#{result}")
  end
end
