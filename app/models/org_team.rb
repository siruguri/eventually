class OrgTeam < ActiveRecord::Base
  belongs_to :organization
  belongs_to :team

end
