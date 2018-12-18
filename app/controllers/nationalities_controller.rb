class NationalitiesController < ApplicationController
  before_action :set_nationality, only: [:show, :edit, :update, :destroy]

  # GET /nationalities
  # GET /nationalities.json
  def index
    @nationalities = Nationality.all
  end

  # GET /nationalities/1
  # GET /nationalities/1.json
  def show
    @nationality = Nationality.find(params[:id])
  end

  # GET /nationalities/new
  def new
    @nationality = Nationality.new
  end

  # GET /nationalities/1/edit
  def edit
    @nationality = Nationality.find(params[:id])
  end

  # POST /nationalities
  # POST /nationalities.json
  def create

    @nationalities = Nationality.all
    @nationality = Nationality.create(nationality_params)

=begin
    @nationality = Nationality.new(nationality_params)

    respond_to do |format|
      if @nationality.save
        format.html { redirect_to @nationality, notice: 'Nationality was successfully created.' }
        format.json { render :show, status: :created, location: @nationality }
      else
        format.html { render :new }
        format.json { render json: @nationality.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /nationalities/1
  # PATCH/PUT /nationalities/1.json
  def update

    @nationalities = Nationality.all
    @nationality = Nationality.find(params[:id])

    @nationality.update_attributes(nationality_params)

=begin
    respond_to do |format|
      if @nationality.update(nationality_params)
        format.html { redirect_to @nationality, notice: 'Nationality was successfully updated.' }
        format.json { render :show, status: :ok, location: @nationality }
      else
        format.html { render :edit }
        format.json { render json: @nationality.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @nationality = Nationality.find(params[:nationality_id])
  end


  # DELETE /nationalities/1
  # DELETE /nationalities/1.json
  def destroy

    @nationalities = Nationality.all
    @nationality = Nationality.find(params[:id])
    @nationality.destroy

=begin
    @nationality.destroy
    respond_to do |format|
      format.html { redirect_to nationalities_url, notice: 'Nationality was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nationality
      @nationality = Nationality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nationality_params
      params.require(:nationality).permit(:nationality_title, :notes)
    end
end
