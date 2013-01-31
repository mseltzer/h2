class Schools < ActiveRecord::Base
  attr_accessible :lat, :lon, :population, :schoolName
end
