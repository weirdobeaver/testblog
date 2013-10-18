class VotesController < ApplicationController
	def create
		vote = Vote.new(comment: current_comment,
										user: current_user,
										value: 1)
		vote.save
	end
end