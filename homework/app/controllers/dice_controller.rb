class DiceController < ApplicationController



	def first_roll
		@rolls = {1 => [1 + rand(6), 1 + rand(6)]}
		@point = @rolls[1].sum

		if @rolls[1].sum == 7 || @rolls[1].sum ==11
			@gameover = true
			@win= true
		elsif @rolls[1].sum == 2 || @rolls[1].sum == 3 || @rolls[1].sum == 12
			@gameover = true
			@win= false
		end
	end

	def is_win param
		if param.sum == @point
			@gameover = true
			return true
		elsif param.sum == 7
			@gameover == true
			return false
		end
	end


	def dice_index
		#@rolls = {1 => [1 + rand(6), 1 + rand(6)]}
	end

	
#@rolls.push({(@rolls.size +1) => roll})
			#@point = @rolls[@rolls.size +1]
			
			#is_win([1 + rand(6), 1 + rand(6)])
end