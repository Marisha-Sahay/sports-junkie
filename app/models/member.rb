class Member < ApplicationRecord
  has_many :interested_sports
  has_many :teams, through: :interested_sports
  has_many :member_team_aggs
end
