class Event < ActiveRecord::Base
  attr_accessible :address, :description, :end, :in_series, :name, :start, :vol_need, :organization_id

  belongs_to :organization

end
