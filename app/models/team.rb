class Team < ApplicationRecord
  has_many :org_sports
  has_many :organizations, through: :org_sports 
  has_many :interested_sports
  has_many :members, through: :interested_sports 
end
