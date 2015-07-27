class CommentsController < ApplicationController
  def create
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end

  def edit
    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = comment.find(params[:id])

    if @comment.update(comment_params)
      redirect_to comment_path(@comment)
    else
      render 'edit'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.find(params[:id])
    @comment.destroy

    redirect_to gossip_path(@gossip)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :text, :gossip_id)
    end
end