class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
    @vote = @site.votes.build()
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      flash[:success] = 'サイトを登録しました'
    else
      flash.now[:danger] = 'サイトを登録できませんでした'
    end
    redirect_to root_path
  end
  
  private
  
  def site_params
    params.require(:site).permit(:site_name, :site_url, :site_image)
  end
end
