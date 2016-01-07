class InterestedPeopleController < ApplicationController
  before_action :set_interested_person, only: [:show, :edit, :update, :destroy]

  # GET /interested_people
  # GET /interested_people.json
  def index
    @interested_people = InterestedPerson.all
  end

  # GET /interested_people/1
  # GET /interested_people/1.json
  def show
  end

  # GET /interested_people/new
  def new
    @interested_person = InterestedPerson.new
  end

  # GET /interested_people/1/edit
  def edit
  end

  # POST /interested_people
  # POST /interested_people.json
  def create
    @interested_person = InterestedPerson.new(interested_person_params)

    respond_to do |format|
      if @interested_person.save
        format.html { redirect_to root_path, notice: 'We will email you when we launch!' }
        format.json { render :show, status: :created, location: @interested_person }
      else
        format.html { render :new }
        format.json { render json: @interested_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interested_people/1
  # PATCH/PUT /interested_people/1.json
  def update
    respond_to do |format|
      if @interested_person.update(interested_person_params)
        format.html { redirect_to @interested_person, notice: 'Interested person was successfully updated.' }
        format.json { render :show, status: :ok, location: @interested_person }
      else
        format.html { render :edit }
        format.json { render json: @interested_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interested_people/1
  # DELETE /interested_people/1.json
  def destroy
    @interested_person.destroy
    respond_to do |format|
      format.html { redirect_to interested_people_url, notice: 'Interested person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interested_person
      @interested_person = InterestedPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interested_person_params
      params[:interested_person].permit(:name, :email, :location)
    end
end
