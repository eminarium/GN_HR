class DegreesController < ApplicationController
  before_action :set_degree, only: [:show, :edit, :update, :destroy]

  # GET /degrees
  # GET /degrees.json
  def index
    @degrees = Degree.all
  end

  # GET /degrees/1
  # GET /degrees/1.json
  def show
    @degree = Degree.find(params[:id])
  end

  # GET /degrees/new
  def new
    @degree = Degree.new
  end

  # GET /degrees/1/edit
  def edit
    @degree = Degree.find(params[:id])
  end

  # POST /degrees
  # POST /degrees.json
  def create

    @degrees = Degree.all
    @degree = Degree.create(degree_params)

=begin
    respond_to do |format|
      if @degree.save
        format.html { redirect_to @degree, notice: 'Degree was successfully created.' }
        format.json { render :show, status: :created, location: @degree }
      else
        format.html { render :new }
        format.json { render json: @degree.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /degrees/1
  # PATCH/PUT /degrees/1.json
  def update

    @degrees = Degree.all
    @degree = Degree.find(params[:id])

    @degree.update_attributes(degree_params)

=begin
    respond_to do |format|
      if @degree.update(degree_params)
        format.html { redirect_to @degree, notice: 'Degree was successfully updated.' }
        format.json { render :show, status: :ok, location: @degree }
      else
        format.html { render :edit }
        format.json { render json: @degree.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @degree = Degree.find(params[:degree_id])
  end

  # DELETE /degrees/1
  # DELETE /degrees/1.json
  def destroy

    @degrees = Degree.all
    @degree = Degree.find(params[:id])
    @degree.destroy
=begin
    @degree.destroy
    respond_to do |format|
      format.html { redirect_to degrees_url, notice: 'Degree was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_degree
      @degree = Degree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def degree_params
      params.require(:degree).permit(:degree_title, :notes)
    end
end
