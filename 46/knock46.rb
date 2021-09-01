class Knock46
  ADMISSION_FEE = 600
  ADMISSION_FEE_FOR_5_OR_MORE_PEOPLE = 550
  ADMISSION_FEE_FOR_20_OR_MORE_PEOPLE = 500

  VISITORS_COUNT_FOR_CHANGING_SMALL_DISCOUNT = 5
  VISITORS_COUNT_FOR_CHANGING_LARGE_DISCOUNT = 20

  def self.execute
    new.execute
  end

  def initialize
    @total_fee = 0
  end

  def execute
    visitors_count = receive_stdin

    if visitors_count < VISITORS_COUNT_FOR_CHANGING_SMALL_DISCOUNT
      @total_fee += ADMISSION_FEE * visitors_count
    elsif (VISITORS_COUNT_FOR_CHANGING_SMALL_DISCOUNT...VISITORS_COUNT_FOR_CHANGING_LARGE_DISCOUNT).cover?(visitors_count)
      @total_fee += ADMISSION_FEE_FOR_5_OR_MORE_PEOPLE * visitors_count
    elsif visitors_count >= VISITORS_COUNT_FOR_CHANGING_LARGE_DISCOUNT
      @total_fee += ADMISSION_FEE_FOR_20_OR_MORE_PEOPLE * visitors_count
    end

    $stdout.write("料金 #{@total_fee}")
  end

  private

    def receive_stdin
      return @input if @input
      $stdout.write("人数")
      @input = $stdin.gets.chomp.to_i
    end
end
