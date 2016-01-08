class InterestedPerson < ActiveRecord::Base
	validates :name, :email, presence: true
end
