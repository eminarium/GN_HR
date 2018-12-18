class WorkExperiencesController < ApplicationController
  before_action :set_work_experience, only: [:show, :edit, :update, :destroy]

  # GET /work_experiences
  # GET /work_experiences.json
  def index
    @work_experiences = WorkExperience.includes(:employee).includes(:position_type).all
  end

  # GET /work_experiences/1
  # GET /work_experiences/1.json
  def show
    @work_experience = WorkExperience.find(params[:id])
  end

  # GET /work_experiences/new
  def new
    @work_experience = WorkExperience.new

    @employees = Employee.all.order(:first_name)
    @position_types = PositionType.all.order(:position_type_title)
  end

  # GET /work_experiences/1/edit
  def edit
    @work_experience = WorkExperience.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @position_types = PositionType.all.order(:position_type_title)
  end

  # POST /work_experiences
  # POST /work_experiences.json
  def create

    @work_experiences = WorkExperience.all
    @work_experience = WorkExperience.create(work_experience_params)

    @employees = Employee.all.order(:first_name)
    @position_types = PositionType.all.order(:position_type_title)

=begin
    @work_experience = WorkExperience.new(work_experience_params)

    respond_to do |format|
      if @work_experience.save
        format.html { redirect_to @work_experience, notice: 'Work experience was successfully created.' }
        format.json { render :show, status: :created, location: @work_experience }
      else
        format.html { render :new }
        format.json { render json: @work_experience.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /work_experiences/1
  # PATCH/PUT /work_experiences/1.json
  def update

    @work_experiences = WorkExperience.all
    @work_experience = WorkExperience.find(params[:id])

    @work_experience.update_attributes(work_experience_params)

    @employees = Employee.all.order(:first_name)
    @position_types = PositionType.all.order(:position_type_title)

=begin
    respond_to do |format|
      if @work_experience.update(work_experience_params)
        format.html { redirect_to @work_experience, notice: 'Work experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_experience }
      else
        format.html { render :edit }
        format.json { render json: @work_experience.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @work_experience = WorkExperience.find(params[:work_experience_id])
  end

  # DELETE /work_experiences/1
  # DELETE /work_experiences/1.json
  def destroy

    @work_experiences = WorkExperience.all
    @work_experience = WorkExperience.find(params[:id])
    @work_experience.destroy

=begin
    @work_experience.destroy
    respond_to do |format|
      format.html { redirect_to work_experiences_url, notice: 'Work experience was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_experience
      @work_experience = WorkExperience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_experience_params
      params.require(:work_experience).permit(:employee_id, :organization_title, :start_date, :end_date, :position_title, :position_type_id, :notes)
    end
end
