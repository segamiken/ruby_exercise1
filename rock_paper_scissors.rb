STDOUT.sync = true

puts "最初はグー、じゃんけん…"

def janken
	puts "[0]:グー"
	puts "[1]:チョキ"
	puts "[2]:パー"

	your_hand=gets.to_i
	his_hand=rand(3)

	jankens=["グー", "チョキ", "パー"]

	puts "あなたの手:#{jankens[your_hand]}"
	puts "相手の手:#{jankens[his_hand]}"

	if your_hand>2
		puts"入力された値が無効です"
		return true
	end

	if your_hand==his_hand
		puts"あいこで"
		return true
		elsif(your_hand==0 && his_hand==1)||(your_hand==1 && his_hand==2)||(your_hand==2 && his_hand==0)
		puts "あなたの勝ちです"
		return false
		else
		puts "あなたの負けです"
		return false
	end
end

next_game=true

while next_game
	next_game = janken
end