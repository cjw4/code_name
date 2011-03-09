class ScorecardsController < ApplicationController
  def index
    @scorecard = Scorecard.new
    @scorecards = Scorecard.all
  end

  def new
  end

  def create
    @scorecard = Scorecard.new(params[:scorecard])
    
    if @scorecard.save
      redirect_to(:action => "index")
    else
    end
  end

end
