module ApplicationHelper
	def title(page_title)
    content_for(:title) { page_title }
  end

  def meta_desc(page_description)
    content_for(:meta_desc) { page_description }
  end

  def rating_class(number)
    ratingNumber = {'1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five'}
    ratingNumber[number.to_s]
  end

  def match_season(seasons)
    match = false
    seasons.each do |season|
      season.name = :summer if season.name == 'Été' or season.name == 'Summer'
      season.name = :winter if season.name == 'Hiver' or season.name == 'Winter'
      if session[:season] == season.name
        match = true
      end
    end
    return match
  end
  
  
end
