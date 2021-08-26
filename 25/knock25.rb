class Knock25
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = if input >= 0
               "range 3"
             elsif (-10...0).cover?(input)
               "range 2"
             elsif input < -10
               "range 1"
             end

    $stdout.write(result)
  end
end
