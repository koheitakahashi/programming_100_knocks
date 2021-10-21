class Knock55
  REPEAT_COUNT = 3

  def self.execute
    new.execute
  end

  def execute
    output = []

    REPEAT_COUNT.times do
      output << "とんで" * 9
      output << "まわって" * 3
      output << "まわる"
      output << "\n"
    end

    $stdout.write(output.join)
  end
end
