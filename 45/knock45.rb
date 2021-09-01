class Knock45
  FIRST_DISTANCE = 1700 # 単位: メートル
  CHARGING_DISTANCE = 313  # 単位: メートル
  FIRST_FEE = 610 # 単位: 円
  BASIC_FEE = 80 # 単位: 円

  def self.execute
    new.execute
  end

  def execute
    distance = receive_stdin
    excluded_first_distance = distance - FIRST_DISTANCE

    @fee = FIRST_FEE
    @fee += BASIC_FEE * (excluded_first_distance / CHARGING_DISTANCE)
    @fee += BASIC_FEE if (excluded_first_distance % CHARGING_DISTANCE) > 0

    $stdout.write("金額 #{@fee}")
  end

  private

    def receive_stdin
      return @input if @input
      $stdout.write("距離")
      @input = $stdin.gets.chomp.to_i
    end
end
