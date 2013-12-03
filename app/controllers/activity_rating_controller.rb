class ActivityRatingController < ApplicationController

  def rate 
    @item = Activity.find(params[:id])

    if not @item.activity_rating
      ActivityRating.create(:activity => @item)
      @item = Activity.find(params[:id])
    end

    @rater_amount = @item.activity_rating.rater_amount.to_f
    @current_rate = @item.activity_rating.rate.to_f

    @rating = ((@rater_amount * @current_rate.to_f) + params[:activity_rating].to_f) / (@rater_amount + 1)
    #@rating = @rating / (@rater_amount + 1)

    @item.activity_rating.update_attribute(:rate, @rating)
    @item.activity_rating.update_attribute(:rater_amount, @rater_amount + 1)

    cookies['activity' + params[:id]] = { :value => params[:id], :expires => 1.year.from_now }

    respond_to do |format|
      format.js { render "rate", :locals => {:id => params[:id]} }
    end
  end

end