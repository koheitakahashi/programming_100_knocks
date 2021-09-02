class Knock49
  MATRIX_LAST_NUMBER = 9

  def self.execute
    new.execute
  end

  # 野暮ったい
  def execute
    table = []

    (1..9).each do |row|
      (1..9).each do |line|
        cell = "#{row * line}"

        if line != MATRIX_LAST_NUMBER
          cell << "\t"
        elsif line == MATRIX_LAST_NUMBER && row == MATRIX_LAST_NUMBER
          cell << "\n"
        elsif line == MATRIX_LAST_NUMBER
          cell << "\t\n"
        end

        table << cell
      end
    end

    $stdout.write(table.join)
  end
end
