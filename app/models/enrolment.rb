class Enrolment < ActiveRecord::Base
  belongs_to :team
  belongs_to :user

  attr_accessible :team_id, :user_id, :teamrole
end
