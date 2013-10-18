class CommentsController < ApplicationController
	def create
		comment = Comment.new(body: params[:comment][:body], 
													post_id: params[:comment][:post_id],
													user: current_user)
	  comment.save
	  redirect_to post_path(comment.post)
	end

end
