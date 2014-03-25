class PoliticalReviewController < ApplicationController
  def index
  	@content = PoliticalReview.first()
  end
end
