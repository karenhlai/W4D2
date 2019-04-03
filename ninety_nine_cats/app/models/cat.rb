require "action_view"

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  COLORS = %w(gray orange brown black white)
  
  validates :color, inclusion: COLORS
  validates :sex, inclusion: ['M', 'F'] 

  def age
    time_ago_in_words(birth_date)
  end


end
