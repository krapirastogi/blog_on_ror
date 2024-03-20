class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:destroy]
  http_basic_authenticate_with name: "Krapi", password: "abcd1234", only: :destroy


def create
  @article = Article.find(params[:article_id])
  @comment = @article.comments.create(comment_params)
  redirect_to article_path(@article)
end

def destroy
  @article = Article.find(params[:article_id])
  @comment = @article.comments.find(params[:id])
  if @comment.destroy
    render json: { result: 'success' }
  else
    render json: { result: 'fail' }
  end
end

private
  def comment_params
    params.require(:comment).permit(:commenter, :body ,:status)
  end
end
