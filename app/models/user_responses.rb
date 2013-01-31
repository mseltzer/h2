class UserResponses < ActiveRecord::Base
  attr_accessible :questionId, :responseId, :schoolId, :userId
end
