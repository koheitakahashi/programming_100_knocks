class Knock47
  ALLOW_RECEIVING_STDIN_COUNT = 2

  def self.execute
    new.execute
  end

  def execute
    input = []
    ALLOW_RECEIVING_STDIN_COUNT.times { input << $stdin.gets.chomp.split(":") }

    hashed_input = to_hash(input)

    a, b = hashed_input[:a], hashed_input[:b]
    a, b = b, a

    $stdout.write("a = #{a}, b = #{b}")
  end

  private

    def to_hash(input)
      input.to_h.map { |k, v| [k.to_sym, v.to_i] }.to_h
    end
end
