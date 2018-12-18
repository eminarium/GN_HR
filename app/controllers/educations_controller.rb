class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  # GET /educations
  # GET /educations.json
  def index
    @educations = Education.includes(:employee).includes(:degree).all
  end

  # GET /educations/1
  # GET /educations/1.json
  def show
    @education = Education.find(params[:id])
  end

  # GET /educations/new
  def new
    @education = Education.new

    @employees = Employee.all.order(:first_name)
    @degrees = Degree.all.order(:degree_title)
  end

  # GET /educations/1/edit
  def edit
    @education = Education.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @degrees = Degree.all.order(:degree_title)
  end

  # POST /educations
  # POST /educations.json
  def create

    @educations = Education.all
    @education = Education.create(education_params)

    @employees = Employee.all.order(:first_name)
    @degrees = Degree.all.order(:degree_title)

=begin
    @education = Education.new(education_params)

    respond_to do |format|
      if @education.save
        format.html { redirect_to @education, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @education }
      else
        format.html { render :new }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /educations/1
  # PATCH/PUT /educations/1.json
  def update

    @educations = Education.all
    @education = Education.find(params[:id])

    @education.update_attributes(education_params)

    @employees = Employee.all.order(:first_name)
    @degrees = Degree.all.order(:degree_title)

=begin
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to @education, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @education = Education.find(params[:education_id])
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy

    @educations = Education.all
    @education = Education.find(params[:id])
    @education.destroy

=begin
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education
      @education = Education.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_params
      params.require(:education).permit(:employee_id, :degree_id, :institution_title, :diploma_title, :diploma_no, :start_date, :end_date, :notes)
    end
end
