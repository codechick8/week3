class PokerController < ApplicationController

	def new_hand
		#enum suits (Spades, Hearts, Diamonds, Club)
		suit = %w[Hearts Spades Diamonds Clubs]

		#enum ranks (Ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King)
		rank = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]

		#array for deck

		@deck = []

		rank.each do |r|
			suit.each do |s|
				@deck << "#{r} of #{s}"
			end
		end

	
		@deck = @deck.shuffle
		
	end
	

end