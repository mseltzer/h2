class SchoolVisits < ActiveRecord::Base
  attr_accessible :lastVisit, :schoolId, :userId
end
