class SetSeasonController < ApplicationController
  def winter
  	@season = :winter
    set_season_and_redirect
  end

  def summer
    @season = :summer
    set_season_and_redirect
  end

  private
  def set_season_and_redirect
    session[:season] = @season
    redirect_to :back
    rescue ActionController::RedirectBackError
      redirect_to :root
  end
end
