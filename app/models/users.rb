class Users < ActiveRecord::Base
  attr_accessible :firstName, :lastName, :name
end
