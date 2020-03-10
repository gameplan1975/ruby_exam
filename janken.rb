

class Player
    def hand
      puts "数字を入力してください。"
      puts "0:グー, 1:チョキ, 2:パー"     
      input_hand = gets.chomp

      while input_hand != "0" &&  input_hand !="1" && input_hand !="2" do
        puts "もう一度数字を入力してください。"
        puts "0:グー, 1:チョキ, 2:パー"
        input_hand = gets.chomp
      end

      player_hand = input_hand.to_i
      return player_hand

    end
end

class Enemy
    def hand
      enemy_hand = rand(2)
      return enemy_hand
    end
end

  class Janken
    def pon(player_hand, enemy_hand)
      janken = ["グー", "チョキ", "パー"]
      puts "相手の手は#{janken[enemy_hand]}です。"

      if player_hand == enemy_hand then

        puts "あいこですね、もう一度勝負！" #あいこでループする処理を追加
        newgame = true
        
        elsif player_hand +1 == enemy_hand || player_hand -2 == enemy_hand
        then puts "あなたの勝ちです"
        newgame = false

        elsif player_hand -1 == enemy_hand || player_hand +2 == enemy_hand
        then puts "あなたの負けです"
        newgame = false

        else puts "エラー"
        newgame = false

      end

      return newgame
    end
  end

player = Player.new
enemy = Enemy.new
janken = Janken.new
newgame = true

while newgame
  newgame = janken.pon(player.hand, enemy.hand)

end

