class Knock31
  def self.execute
    input = $stdin.gets.chomp.to_i
    result = ""

    return $stdout.write("#{result}") if input <= 0

    (1..input).each do |i|
      result += "*"
      result += "\s" if i % 5 == 0
    end

    $stdout.write("#{result}")
  end
end
