class EventRating < ActiveRecord::Base
	belongs_to :event
  
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
