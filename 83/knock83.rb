class Knock83
  HANDS = {
    0 => 'グー'.freeze,
    1 => 'チョキ'.freeze,
    2 => 'パー'.freeze,
  }.freeze

  def self.execute
    new.execute
  end

  def execute
    5.time do 
      puts "あなたの手を選んでください(グー0、チョキ1、パー2)"
      user_hand = gets
      cpu_hand = HANDS.keys.sample

      puts "コンピューターは#{HANDS[cpu_hand]}"

    end
  end
end
