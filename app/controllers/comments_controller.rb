class CommentsController < ApplicationController
    layout 'blog'
    def create
        @comment = current_user.comments.build(comment_params)
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy

        redirect_to(@comment.blog)
    end

    private

    def comment_params
        params.require(:comment).permit(:content)
    end
end
