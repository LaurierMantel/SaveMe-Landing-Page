class InterestedPerson < ActiveRecord::Base
	validates :name, :email, presence: true
	validates :email, uniqueness: true
end
