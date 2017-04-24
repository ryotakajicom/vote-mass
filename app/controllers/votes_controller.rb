class VotesController < ApplicationController
  def create
    @vote = Site.find(params[:vote][:site_id]).votes.build(vote_params)
    if @vote.save
      flash[:success] = 'いいねしました'
    else
      flash.now[:danger] = 'いいねできませんでした'
    end
    redirect_back(fallback_location: root_path)
  end
  
  def new
  end
  
  private
  
  def vote_params
    params.require(:vote).permit(:site_id, :comment, :user_id)
  end
end
