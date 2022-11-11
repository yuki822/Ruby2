# じゃんけん処理
puts "最初はグーじゃんけん・・・・"

def janken
  puts "[0]グー\n[1]チョキ\n[2]パー"

  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    return janken
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです、あっち向いて・・・・"
    return acchimuite_hoi1
  else
    puts "あなたの負けです、あっち向いて・・・・"
    return acchimuite_hoi2
  end
end

def acchimuite_hoi1
  puts "[0]上\n[1]下\n[2]左\n[3]右"  

  player_direction = gets.to_i
  program_direction = rand(4)

  directions = ["上","下","左","右"]
    puts "あなた：#{directions[player_direction]}, 相手：#{directions[program_direction]}"

  if player_direction == program_direction
    puts "あなたの勝ちです"
    exit
  else
    puts "もう一度、じゃんけん・・・・"
    return janken
  end
end

def acchimuite_hoi2
  puts "[0]上\n[1]下\n[2]左\n[3]右"  

  player_direction = gets.to_i
  program_direction = rand(4)

  directions = ["上","下","左","右"]
    puts "あなた：#{directions[player_direction]}, 相手：#{directions[program_direction]}"

  if player_direction == program_direction
    puts "あなたの負けです"
    exit
  else
    puts "もう一度、じゃんけん・・・・"
    return janken
  end
end

next_game = true

while next_game
  next_game = janken
end

repeat_game = false

until repeat_game do
  repeat_game = acchimuite_hoi1
end

until repeat_game do
  repeat_game = acchimuite_hoi2
end

repeat_game = true

while next_game
  next_game = janken
end