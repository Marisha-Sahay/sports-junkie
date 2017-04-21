class MemberTeamAgg < ApplicationRecord
  has_many :teams
  has_many :members
end

