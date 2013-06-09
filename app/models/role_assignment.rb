class RoleAssignment < ActiveRecord::Base
  belongs_to :role
  belongs_to :person
  # attr_accessible :title, :body
end
