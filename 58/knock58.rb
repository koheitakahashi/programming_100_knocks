class Knock58
  def self.execute
    new.execute
  end

  def initialize
    @input = $stdin.readlines
  end

  def execute
    dots = formatted_input.map { |count| ("*" * count).each_slice(5) }

    output = dots.map { |dot| ":#{dot.join(' ')}" }.join("\n")

    $stdout.write("#{output}\n")
  end

  private
    attr_reader :input

    def formatted_input
      input.map { |string| string.chomp.to_i }
    end
end

class String
  def each_slice(limit)
    each_char.each_slice(limit).map(&:join)
  end
end
