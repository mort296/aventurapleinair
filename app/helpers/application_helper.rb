module ApplicationHelper
	def title(page_title)
    content_for(:title) { page_title }
  end

  def rating_class(number)
    ratingNumber = {'1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five'}
    ratingNumber[number.to_s]
  end
  
end
