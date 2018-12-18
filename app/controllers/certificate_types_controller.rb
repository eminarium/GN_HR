class CertificateTypesController < ApplicationController
  before_action :set_certificate_type, only: [:show, :edit, :update, :destroy]

  # GET /certificate_types
  # GET /certificate_types.json
  def index
    @certificate_types = CertificateType.all
  end

  # GET /certificate_types/1
  # GET /certificate_types/1.json
  def show
    @certificate_type = CertificateType.find(params[:id])
  end

  # GET /certificate_types/new
  def new
    @certificate_type = CertificateType.new
  end

  # GET /certificate_types/1/edit
  def edit
    @certificate_type = CertificateType.find(params[:id])
  end

  # POST /certificate_types
  # POST /certificate_types.json
  def create

    @certificate_types = CertificateType.all
    @certificate_type = CertificateType.create(certificate_type_params)

=begin
    @certificate_type = CertificateType.new(certificate_type_params)

    respond_to do |format|
      if @certificate_type.save
        format.html { redirect_to @certificate_type, notice: 'Certificate type was successfully created.' }
        format.json { render :show, status: :created, location: @certificate_type }
      else
        format.html { render :new }
        format.json { render json: @certificate_type.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /certificate_types/1
  # PATCH/PUT /certificate_types/1.json
  def update

    @certificate_types = CertificateType.all
    @certificate_type = CertificateType.find(params[:id])

    @certificate_type.update_attributes(certificate_type_params)

=begin
    respond_to do |format|
      if @certificate_type.update(certificate_type_params)
        format.html { redirect_to @certificate_type, notice: 'Certificate type was successfully updated.' }
        format.json { render :show, status: :ok, location: @certificate_type }
      else
        format.html { render :edit }
        format.json { render json: @certificate_type.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @certificate_type = CertificateType.find(params[:certificate_type_id])
  end

  # DELETE /certificate_types/1
  # DELETE /certificate_types/1.json
  def destroy

    @certificate_types = CertificateType.all
    @certificate_type = CertificateType.find(params[:id])
    @certificate_type.destroy

=begin
    @certificate_type.destroy
    respond_to do |format|
      format.html { redirect_to certificate_types_url, notice: 'Certificate type was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificate_type
      @certificate_type = CertificateType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificate_type_params
      params.require(:certificate_type).permit(:certificate_type_title, :notes)
    end
end
