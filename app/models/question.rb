class Question < ApplicationRecord
  with_options presence: true do
    validates :correct
    validates :wrong_1
    validates :wrong_2
    validates :wrong_3
    validates :hint
    validates :video
  end

  
end
