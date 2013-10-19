class VotesController < ApplicationController
	def create
		vote = Vote.new(comment_id: params[:vote][:comment_id],
										user: current_user,
										value: params[:vote][:value])
		vote.save
	end
end