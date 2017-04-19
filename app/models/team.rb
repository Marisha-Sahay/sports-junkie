class Team < ApplicationRecord
  has_many :interested_sports
  has_many :members, through: :interested_sports 
end
