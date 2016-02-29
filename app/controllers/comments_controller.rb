class CommentsController < ApplicationController

def create
	@message = Messafe.find(params[:messafe_id])
	@comment = @message.comments.create(comment_params)
	@comment.user_ide = current_user.id

	if @comment.save
		redirect_to message_path(@message)
	else
		render 'new'
	end
end

private

def comment_params
	params.require(:comment).permit(:comment)
end
end