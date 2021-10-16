class Knock52
  def self.execute
    new.execute
  end

  def execute
    input = $stdin.gets.chomp.to_i

    if leap_year?(input)
      $stdout.write("#{input}年は閏年である")
    else
      $stdout.write("#{input}年は閏年でない")
    end
  end

  private
    def leap_year?(input)
      Proc.new { input % 4 == 0 && (input % 100 != 0 || input % 400 == 0) }.call
    end
end
