class CertificatesController < ApplicationController
  before_action :set_certificate, only: [:show, :edit, :update, :destroy]

  # GET /certificates
  # GET /certificates.json
  def index
    @certificates = Certificate.includes(:employee).includes(:certificate_type).all
  end

  # GET /certificates/1
  # GET /certificates/1.json
  def show
    @certificate = Certificate.find(params[:id])
  end

  # GET /certificates/new
  def new
    @certificate = Certificate.new

    @employees = Employee.all.order(:first_name)
    @certificate_types = CertificateType.all.order(:certificate_type_title)
  end

  # GET /certificates/1/edit
  def edit
    @certificate = Certificate.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @certificate_types = CertificateType.all.order(:certificate_type_title)
  end

  # POST /certificates
  # POST /certificates.json
  def create

    @certificates = Certificate.all
    @certificate = Certificate.create(certificate_params)

    @employees = Employee.all.order(:first_name)
    @certificate_types = CertificateType.all.order(:certificate_type_title)

=begin
    @certificate = Certificate.new(certificate_params)

    respond_to do |format|
      if @certificate.save
        format.html { redirect_to @certificate, notice: 'Certificate was successfully created.' }
        format.json { render :show, status: :created, location: @certificate }
      else
        format.html { render :new }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /certificates/1
  # PATCH/PUT /certificates/1.json
  def update

    @certificates = Certificate.all
    @certificate = Certificate.find(params[:id])

    @certificate.update_attributes(certificate_params)

    @employees = Employee.all.order(:first_name)
    @certificate_types = CertificateType.all.order(:certificate_type_title)

=begin
    respond_to do |format|
      if @certificate.update(certificate_params)
        format.html { redirect_to @certificate, notice: 'Certificate was successfully updated.' }
        format.json { render :show, status: :ok, location: @certificate }
      else
        format.html { render :edit }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @certificate = Certificate.find(params[:certificate_id])
  end

  # DELETE /certificates/1
  # DELETE /certificates/1.json
  def destroy

    @certificates = Certificate.all
    @certificate = Certificate.find(params[:id])
    @certificate.destroy

=begin
    @certificate.destroy
    respond_to do |format|
      format.html { redirect_to certificates_url, notice: 'Certificate was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificate
      @certificate = Certificate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificate_params
      params.require(:certificate).permit(:employee_id, :certificate_type_id, :certificate_title, :certificate_no, :issued_by, :issued_date, :expiry_date, :notes)
    end
end
