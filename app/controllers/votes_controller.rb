class VotesController < ApplicationController
	def create
		comment = Comment.find(params[:vote][:comment_id])
		vote = Vote.create(comment: comment,
									     user: current_user,
										   value: params[:vote][:value])
		redirect_to post_path(comment.post)
	end

	def vote_up
	end
end