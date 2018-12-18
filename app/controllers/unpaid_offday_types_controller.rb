class UnpaidOffdayTypesController < ApplicationController
  before_action :set_unpaid_offday_type, only: [:show, :edit, :update, :destroy]

  # GET /unpaid_offday_types
  # GET /unpaid_offday_types.json
  def index
    @unpaid_offday_types = UnpaidOffdayType.all
  end

  # GET /unpaid_offday_types/1
  # GET /unpaid_offday_types/1.json
  def show
    @unpaid_offday_type = UnpaidOffdayType.find(params[:id])
  end

  # GET /unpaid_offday_types/new
  def new
    @unpaid_offday_type = UnpaidOffdayType.new
  end

  # GET /unpaid_offday_types/1/edit
  def edit
    @unpaid_offday_type = UnpaidOffdayType.find(params[:id])
  end

  # POST /unpaid_offday_types
  # POST /unpaid_offday_types.json
  def create

    @unpaid_offday_types = UnpaidOffdayType.all
    @unpaid_offday_type = UnpaidOffdayType.create(unpaid_offday_type_params)

=begin
    @unpaid_offday_type = UnpaidOffdayType.new(unpaid_offday_type_params)

    respond_to do |format|
      if @unpaid_offday_type.save
        format.html { redirect_to @unpaid_offday_type, notice: 'Unpaid offday type was successfully created.' }
        format.json { render :show, status: :created, location: @unpaid_offday_type }
      else
        format.html { render :new }
        format.json { render json: @unpaid_offday_type.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /unpaid_offday_types/1
  # PATCH/PUT /unpaid_offday_types/1.json
  def update

    @unpaid_offday_types = UnpaidOffdayType.all
    @unpaid_offday_type = UnpaidOffdayType.find(params[:id])

    @unpaid_offday_type.update_attributes(unpaid_offday_type_params)

=begin
    respond_to do |format|
      if @unpaid_offday_type.update(unpaid_offday_type_params)
        format.html { redirect_to @unpaid_offday_type, notice: 'Unpaid offday type was successfully updated.' }
        format.json { render :show, status: :ok, location: @unpaid_offday_type }
      else
        format.html { render :edit }
        format.json { render json: @unpaid_offday_type.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @unpaid_offday_type = UnpaidOffdayType.find(params[:unpaid_offday_type_id])
  end

  # DELETE /unpaid_offday_types/1
  # DELETE /unpaid_offday_types/1.json
  def destroy

    @unpaid_offday_types = UnpaidOffdayType.all
    @unpaid_offday_type = UnpaidOffdayType.find(params[:id])
    @unpaid_offday_type.destroy

=begin
    @unpaid_offday_type.destroy
    respond_to do |format|
      format.html { redirect_to unpaid_offday_types_url, notice: 'Unpaid offday type was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unpaid_offday_type
      @unpaid_offday_type = UnpaidOffdayType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unpaid_offday_type_params
      params.require(:unpaid_offday_type).permit(:unpaid_offday_type_title, :notes)
    end
end
