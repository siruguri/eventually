class TeamRole < ActiveRecord::Base
  attr_accessible :name

  has_many :persons, through: :role_assignments
  has_many :role_assignments
end
