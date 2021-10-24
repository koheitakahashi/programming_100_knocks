class Knock56
  def self.execute
    new.execute
  end

  def initialize
    @input = $stdin.gets.chomp.to_i
  end

  def execute
    output = input.to_s(2).rjust(16,"0")
    $stdout.write(output)
  end

  private
    attr_accessor :input
end
