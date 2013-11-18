module ApplicationHelper
	def title(page_title)
    content_for(:title) { page_title }
  end

  def rating_class(number)
    ratingNumber = {'1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five'}
    ratingNumber[number.to_s]
  end

  def currentRate rating
    case rating
      when 1
        rate = 'onestar'
      when 2
        rate = 'twostar'
      when 3
        rate = 'threestar'
      when 4 
        rate = 'fourstar'
      when 5
        rate = 'fivestar'
      else
        rate = 'nostar'
    end
    return rate
  end
  
end
