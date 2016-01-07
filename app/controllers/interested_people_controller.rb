class InterestedPeopleController < ApplicationController

  def new
    @interested_person = InterestedPerson.new
  end

  def create
    @interested_person = InterestedPerson.new(interested_person_params)
    respond_to do |format|
      if @interested_person.save
        format.html { redirect_to root_path, notice: 'We will email you when we launch!' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def interested_person_params
      params[:interested_person].permit(:name, :email, :location)
    end
end
