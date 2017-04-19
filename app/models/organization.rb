class Organization < ApplicationRecord
  has_many :members
  has_many :org_sports
  has_many :teams, through: :org_sports
end
