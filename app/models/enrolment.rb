class Enrolment < ActiveRecord::Base
  belongs_to :team
  belongs_to :person

  attr_accessible :team_id, :person_id, :teamrole
end
