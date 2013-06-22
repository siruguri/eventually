class Enrolment < ActiveRecord::Base
  belongs_to :team
  belongs_to :user

  attr_accessible :team_id, :user_id, :teamrole


  after_create :increment_team_vol_size
  def increment_team_vol_size
    Team.increment_counter("user_count", self.team.id)
  end

  after_destroy :decrement_team_vol_size
  def decrement_team_vol_size
    Team.decrement_counter("user_count", self.team.id)
  end
end
