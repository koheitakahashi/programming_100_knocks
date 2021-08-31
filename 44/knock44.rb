class Knock44
  def self.execute
    new.execute
  end

  def execute
    input = receive_stdin

    dollar = input[:amount] / input[:rate]
    cents = input[:amount] % input[:rate] * 100 / input[:rate]

    $stdout.write("#{input[:amount]}円は#{dollar}ドル#{cents}セント")
  end

  private

    def receive_stdin
      input = { amount: 0, rate: 0 }

      $stdout.write("何円?")
      input[:amount] = $stdin.gets.chomp.to_i

      $stdout.write("1ドルは何円?")
      input[:rate] = $stdin.gets.chomp.to_i

      input
    end
end
