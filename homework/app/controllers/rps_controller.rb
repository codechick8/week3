class RpsController < ApplicationController

	def index
		@choices = [{choice: 'rock'},{choice: 'paper'}, {choice: 'scissors'}]
	end

	def choice
		@choice = params[:choice]
	end

	def selection
		@comp = ['rock', 'paper', 'scissors'].shuffle.first
		
	end

end