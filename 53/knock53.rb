class Knock53
  require "prime"

  def self.execute
    new.execute
  end

  def initialize
    @input = $stdin.gets.chomp.to_i
    @result = 0
    @outputs = []
  end

  def execute
    Prime.each(input) do |prime|
      outputs << prime
      result = result / prime

      break if result <= 0
    end
  end

  private
    attr_writer :input, :result, :outputs
end
