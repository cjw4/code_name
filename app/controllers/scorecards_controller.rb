class ScorecardsController < ApplicationController
  
  def index
    @title = "Your Rounds"
    @date = Time.now
    @scorecard = Scorecard.new
    @scorecards = current_user.scorecards
    
    if params[:id].present?
      @scorecard_show = current_user.scorecards.find(params[:id])
    end
  
  end
  
  
  def show
      @show_scorecard = current_user.scorecards.find(params[:id])
      redirect_to(:action => "index", :id => @show_scorecard)
  end
  
  def destroy
    @scorecard = current_user.scorecards.find(params[:id])
    
    if @scorecard.destroy
      redirect_to(:action => "index")
    end
  end

  def create
    @scorecard = current_user.scorecards.create(params[:scorecard])
    
    if @scorecard.save
      redirect_to(:action => "index")
    else
      redirect_to(:action => "new")
    end
  end
end
