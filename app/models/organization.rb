class Organization < ActiveRecord::Base
  attr_accessible :name

  validates_uniqueness_of :name

  has_many :teams, through: :org_teams
  has_many :org_teams

end
