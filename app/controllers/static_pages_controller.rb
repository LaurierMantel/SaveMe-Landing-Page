class StaticPagesController < ApplicationController
	def home
	end

	def signup
	  @interested_person = InterestedPerson.new
	end

	def about
	end

	def contact
	end
end
