class Team < ActiveRecord::Base
  attr_accessible :name, :organization_id

  validates :name, :presence => true

  belongs_to :organization
  belongs_to :event

  has_many :users, through: :enrolments
  has_many :enrolments

end
