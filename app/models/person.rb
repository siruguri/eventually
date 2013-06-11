class Person < ActiveRecord::Base
  attr_accessible :name, :online_uris
  serialize :online_uris, Array


  # This is necessary to be able to access the attributes in Enrolment via the Person object when referencing the 
  # association in Team
  has_many :teams, through: :enrolments
  has_many :enrolments

  accepts_nested_attributes_for :enrolments
end
