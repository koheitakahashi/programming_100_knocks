class Knock50
  def self.execute
    new.execute
  end

  def execute
    result = (1..100).map do |i|
      next "foobar\n" if i % 15 == 0
      next "bar\n" if i % 5 == 0
      next "foo\n" if i % 3 == 0
      next "#{i}\n"
    end
    $stdout.write(result.join)
  end
end
