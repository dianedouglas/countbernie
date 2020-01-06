class WelcomeController < ApplicationController
  def index
  end

  def tweets
    redirect_to :root
  end

  def create
    tweet = params.permit('tweet').require('tweet')
    Bot.tweet(tweet)
    flash[:success] = "Tweeted! \n #{tweet}"
    render :index
  end
end
