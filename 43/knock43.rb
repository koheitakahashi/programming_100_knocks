class Knock43
  ALLOW_RECEIVING_STDIN_COUNT = 3
  # 参考: https://math-travel.com/hanbestusiki/

  def self.execute
    new.execute
  end

  def initialize
    @a = formatted_input[:a]
    @b = formatted_input[:b]
    @c = formatted_input[:c]
  end

  def execute
    result = if conditional_expression > 0
               "2つの実数解"
             elsif conditional_expression == 0
               "重解"
             else
               "2つの虚数解"
             end

    $stdout.write(result)
  end

  private
    attr_reader :a, :b, :c

    def formatted_input
      return @formatted_input if @formatted_input

      input = []
      ALLOW_RECEIVING_STDIN_COUNT.times { input << $stdin.gets.chomp.split(":") }
      @formatted_input = input.map { |k, v| [k.to_sym, v.to_i] }.to_h
    end

  def conditional_expression
    (b ** 2) - (4 * a * c)
  end
end
