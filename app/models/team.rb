class Team < ApplicationRecord
  has_many :interested_sports
  has_many :members, through: :interested_sports 
  has_many :matches
  has_many :member_team_aggs
end
