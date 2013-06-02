class Shift < ActiveRecord::Base
  attr_accessible :address, :description, :end, :in_series, :name, :start, :vol_need
end
