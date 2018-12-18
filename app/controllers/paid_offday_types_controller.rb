class PaidOffdayTypesController < ApplicationController
  before_action :set_paid_offday_type, only: [:show, :edit, :update, :destroy]

  # GET /paid_offday_types
  # GET /paid_offday_types.json
  def index
    @paid_offday_types = PaidOffdayType.all
  end

  # GET /paid_offday_types/1
  # GET /paid_offday_types/1.json
  def show
    @paid_offday_type = PaidOffdayType.find(params[:id])
  end

  # GET /paid_offday_types/new
  def new
    @paid_offday_type = PaidOffdayType.new
  end

  # GET /paid_offday_types/1/edit
  def edit
    @paid_offday_type = PaidOffdayType.find(params[:id])
  end

  # POST /paid_offday_types
  # POST /paid_offday_types.json
  def create

    @paid_offday_types = PaidOffdayType.all
    @paid_offday_type = PaidOffdayType.create(paid_offday_type_params)

=begin
    @paid_offday_type = PaidOffdayType.new(paid_offday_type_params)

    respond_to do |format|
      if @paid_offday_type.save
        format.html { redirect_to @paid_offday_type, notice: 'Paid offday type was successfully created.' }
        format.json { render :show, status: :created, location: @paid_offday_type }
      else
        format.html { render :new }
        format.json { render json: @paid_offday_type.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /paid_offday_types/1
  # PATCH/PUT /paid_offday_types/1.json
  def update

    @paid_offday_types = PaidOffdayType.all
    @paid_offday_type = PaidOffdayType.find(params[:id])

    @paid_offday_type.update_attributes(paid_offday_type_params)

=begin
    respond_to do |format|
      if @paid_offday_type.update(paid_offday_type_params)
        format.html { redirect_to @paid_offday_type, notice: 'Paid offday type was successfully updated.' }
        format.json { render :show, status: :ok, location: @paid_offday_type }
      else
        format.html { render :edit }
        format.json { render json: @paid_offday_type.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @paid_offday_type = PaidOffdayType.find(params[:paid_offday_type_id])
  end

  # DELETE /paid_offday_types/1
  # DELETE /paid_offday_types/1.json
  def destroy

    @paid_offday_types = PaidOffdayType.all
    @paid_offday_type = PaidOffdayType.find(params[:id])
    @paid_offday_type.destroy

=begin
    @paid_offday_type.destroy
    respond_to do |format|
      format.html { redirect_to paid_offday_types_url, notice: 'Paid offday type was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paid_offday_type
      @paid_offday_type = PaidOffdayType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paid_offday_type_params
      params.require(:paid_offday_type).permit(:paid_offday_type_title, :notes)
    end
end
