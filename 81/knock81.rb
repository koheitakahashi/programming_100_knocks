class Knock81
  TAKE_INDEX_NUMBER = 1

  def self.execute
    new.execute
  end

  def initialize
    @input = $stdin.gets.chomp.split(' ').map(&:to_i)
  end

  def execute
    $stdout.write(input.sort[TAKE_INDEX_NUMBER])
  end

  private
    attr_reader :input
end
