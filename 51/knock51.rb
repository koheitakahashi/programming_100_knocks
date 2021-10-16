class Knock51
  def self.execute
    new.execute
  end

  def execute
    input = $stdin.gets.chomp.to_i

    one_hundred_yen_division_and_mod = input.divmod(100)
    ten_yen_division_and_mod = one_hundred_yen_division_and_mod.last.divmod(10)
    one_yen_division_and_mod = ten_yen_division_and_mod.last.divmod(1)

    $stdout.write("100円玉#{one_hundred_yen_division_and_mod.first}枚, 10円玉#{ten_yen_division_and_mod.first}枚, 1円玉#{one_yen_division_and_mod.first}枚")
  end
end
