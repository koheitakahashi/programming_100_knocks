class Knock57
  def self.execute
    new.execute
  end

  def initialize
    @input = $stdin.readlines.map { |string| string.chomp }

    # 受験者数(入力ファイルの一番最初の文字列)
    @examinees_count = input[0].to_i

    # 受験者の試験結果(入力ファイルの一番最初以外の文字列)
    # 例: 56 31 54
    @examinees_results = format_examinees_results(input[1..-1])
  end

  def execute
    output = []
    output << format_average_part(english: examinees_results.english_average, math: examinees_results.math_average, language: examinees_results.language_average)
    output << format_examinees_total_part(examinees_results.totals)

    $stdout.write("#{output.join("\n")}\n")
  end

  private
    attr_reader :input, :examinees_count, :examinees_results

    def format_examinees_results(result_input)
      format_input = result_input.map do |el|
        strings = el.split(' ')
        strings.map(&:to_i)
      end

      ExamineesResults.new(format_input)
    end

    def format_average_part(english:, math:, language:)
      "平均点 英語:#{english}, 数学:#{math}, 国語:#{language}"
    end

    def format_examinees_total_part(totals)
      format_part = []
      format_part << "個人合計点"
      totals.each.with_index { |total, i| format_part << "#{i}: #{total}" }
      format_part.join("\n")
    end
end

class ExamineesResults < Array
  attr_reader :results
  # params[array]<Array>: 例[[56, 31, 54], [...]]
  def initialize(array)
    super
    @results = array.map { |el| ExamineesResult.new(english: el[0], math: el[1], language: el[2]) }
  end

  def english_average
    @english_average ||= results.map(&:english).sum / results.size
  end

  def math_average
    @math_average ||= results.map(&:math).sum / results.size
  end

  def language_average
    @language_average ||= results.map(&:language).sum / results.size
  end

  def totals
    @totals ||= results.map(&:total)
  end
end

class ExamineesResult
  attr_reader :english, :math, :language, :total

  def initialize(english: , math:, language:)
    @english = english
    @math = math
    @language = language
    @total = english + math + language
  end
end
