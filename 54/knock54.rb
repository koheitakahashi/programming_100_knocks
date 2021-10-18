class Knock54
  def self.execute
    new.execute
  end

  def initialize
    @input = $stdin.readlines.map { |string| string.chomp.to_i }
  end

  def execute
    min = @input.min
    max = @input.max
    $stdout.write("最小値 = #{min}, 最大値 = #{max}")
  end
end
