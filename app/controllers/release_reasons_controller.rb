class ReleaseReasonsController < ApplicationController
  before_action :set_release_reason, only: [:show, :edit, :update, :destroy]

  # GET /release_reasons
  # GET /release_reasons.json
  def index
    @release_reasons = ReleaseReason.all
  end

  # GET /release_reasons/1
  # GET /release_reasons/1.json
  def show
    @release_reason = ReleaseReason.find(params[:id])
  end

  # GET /release_reasons/new
  def new
    @release_reason = ReleaseReason.new
  end

  # GET /release_reasons/1/edit
  def edit
    @release_reason = ReleaseReason.find(params[:id])
  end

  # POST /release_reasons
  # POST /release_reasons.json
  def create

    @release_reasons = ReleaseReason.all
    @release_reason = ReleaseReason.create(release_reason_params)

=begin
    @release_reason = ReleaseReason.new(release_reason_params)

    respond_to do |format|
      if @release_reason.save
        format.html { redirect_to @release_reason, notice: 'Release reason was successfully created.' }
        format.json { render :show, status: :created, location: @release_reason }
      else
        format.html { render :new }
        format.json { render json: @release_reason.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /release_reasons/1
  # PATCH/PUT /release_reasons/1.json
  def update

    @release_reasons = ReleaseReason.all
    @release_reason = ReleaseReason.find(params[:id])

    @release_reason.update_attributes(release_reason_params)

=begin
    respond_to do |format|
      if @release_reason.update(release_reason_params)
        format.html { redirect_to @release_reason, notice: 'Release reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @release_reason }
      else
        format.html { render :edit }
        format.json { render json: @release_reason.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @release_reason = ReleaseReason.find(params[:release_reason_id])
  end

  # DELETE /release_reasons/1
  # DELETE /release_reasons/1.json
  def destroy

    @release_reasons = ReleaseReason.all
    @release_reason = ReleaseReason.find(params[:id])
    @release_reason.destroy

=begin
    @release_reason.destroy
    respond_to do |format|
      format.html { redirect_to release_reasons_url, notice: 'Release reason was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release_reason
      @release_reason = ReleaseReason.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def release_reason_params
      params.require(:release_reason).permit(:release_reason_title, :notes)
    end
end
