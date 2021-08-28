class Knock32
  def self.execute
    plane_result = (1..20).map do |i|
      if (i % 5) == 0
        next "Bar"
      else
        i
      end
    end

    format_result = plane_result.join("\n")

    $stdout.write(format_result)
  end
end
