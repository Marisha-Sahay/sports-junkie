class Team < ApplicationRecord
  has_many :interested_sports
  has_many :members, through: :interested_sports 
  belongs_to :match
  belongs_to :member_team_agg
end
