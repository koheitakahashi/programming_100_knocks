class Knock41
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = if (1..9).cover?(input)
               "#{input} is a single figure."
             else
               "#{input} is not a single figure."
             end
    $stdout.write(result)
  end
end
