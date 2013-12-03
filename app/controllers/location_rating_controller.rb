class LocationRatingController < ApplicationController

  def rate 
    @item = Location.find(params[:id])

    if not @item.location_rating
      LocationRating.create(:location => @item)
      @item = Location.find(params[:id])
    end

    @rater_amount = @item.location_rating.rater_amount.to_f
    @current_rate = @item.location_rating.rate.to_f

    @rating = ((@rater_amount * @current_rate.to_f) + params[:location_rating].to_f) / (@rater_amount + 1)
    #@rating = @rating / (@rater_amount + 1)

    @item.location_rating.update_attribute(:rate, @rating)
    @item.location_rating.update_attribute(:rater_amount, @rater_amount + 1)

    cookies[params[:id]] = { :value => params[:id], :expires => 1.year.from_now }

    respond_to do |format|
      format.js { render "rate", :locals => {:id => params[:id]} }
    end
  end

end