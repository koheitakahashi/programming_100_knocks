class Knock26
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = case input
             when 1
               "one"
             when 2
               "two"
             when 3
               "three"
             else
               "others"
             end

    $stdout.write(result)
  end
end
