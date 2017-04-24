class RankingsController < ApplicationController
  def vote
    @ranking_counts = Vote.ranking
    @sites = Site.find(@ranking_counts.keys)
  end
end
