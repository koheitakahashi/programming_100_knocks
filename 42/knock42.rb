class Knock42
  ALLOW_RECEIVING_STDIN_COUNT = 3
  VERIFICATION_COUNT = 2

  # もうちょっとなんとかならんか...
  def self.execute
    input = []
    ALLOW_RECEIVING_STDIN_COUNT.times { input << $stdin.gets.chomp.to_i }

    @result = "OK"

    VERIFICATION_COUNT.times do |i|
      break @result = "NG" unless input[i] <= input[i + 1]
    end

    $stdout.write(@result)
  end
end
