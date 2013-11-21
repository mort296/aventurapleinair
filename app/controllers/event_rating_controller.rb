class EventRatingController < ApplicationController

  def rate 
    @item = Event.find(params[:id])
    @rater_amount = @item.event_rating.rater_amount.to_f
    @current_rate = @item.event_rating.rate.to_f

    @rating = ((@rater_amount * @current_rate.to_f) + params[:event_rating].to_f) / (@rater_amount + 1)
    #@rating = @rating / (@rater_amount + 1)

    @item.event_rating.update_attribute(:rate, @rating)
    @item.event_rating.update_attribute(:rater_amount, @rater_amount + 1)

    cookies['event' + params[:id].to_s] = { :value => params[:id], :expires => 1.year.from_now }

    respond_to do |format|
      format.js { render "rate", :locals => {:id => params[:id]} }
    end
  end

end