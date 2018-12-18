class PhonesController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update, :destroy]

  # GET /phones
  # GET /phones.json
  def index
    @phones = Phone.includes(:employee).includes(:phone_type).all
  end

  # GET /phones/1
  # GET /phones/1.json
  def show
    @phone = Phone.find(params[:id])
  end

  # GET /phones/new
  def new
    @phone = Phone.new

    @employees = Employee.all.order(:first_name)
    @phone_types = PhoneType.all.order(:phone_type_title)
  end

  # GET /phones/1/edit
  def edit
    @phone = Phone.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @phone_types = PhoneType.all.order(:phone_type_title)
  end

  # POST /phones
  # POST /phones.json
  def create

    @phones = Phone.all
    @phone = Phone.create(phone_params)

    @employees = Employee.all.order(:first_name)
    @phone_types = PhoneType.all.order(:phone_type_title)

=begin
    @phone = Phone.new(phone_params)

    respond_to do |format|
      if @phone.save
        format.html { redirect_to @phone, notice: 'Phone was successfully created.' }
        format.json { render :show, status: :created, location: @phone }
      else
        format.html { render :new }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /phones/1
  # PATCH/PUT /phones/1.json
  def update

    @phones = Phone.all
    @phone = Phone.find(params[:id])

    @phone.update_attributes(phone_params)

    @employees = Employee.all.order(:first_name)
    @phone_types = PhoneType.all.order(:phone_type_title)

=begin
    respond_to do |format|
      if @phone.update(phone_params)
        format.html { redirect_to @phone, notice: 'Phone was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone }
      else
        format.html { render :edit }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @phone = Phone.find(params[:phone_id])
  end

  # DELETE /phones/1
  # DELETE /phones/1.json
  def destroy

    @phones = Phone.all
    @phone = Phone.find(params[:id])
    @phone.destroy

=begin
    @phone.destroy
    respond_to do |format|
      format.html { redirect_to phones_url, notice: 'Phone was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone
      @phone = Phone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_params
      params.require(:phone).permit(:employee_id, :phone_type_id, :phone_no, :notes)
    end
end
