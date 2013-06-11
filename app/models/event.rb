class Event < ActiveRecord::Base
  attr_accessible :address, :description, :end, :in_series, :name, :start, :vol_need, :organization_id

  attr_accessor :team_name

  validates :name, :start, :end, presence: :true

  has_one :team
  belongs_to :organization
end
