class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]

  # GET /parents
  # GET /parents.json
  def index
    @parents = Parent.includes(:employee).includes(:parent_type).all
  end

  # GET /parents/1
  # GET /parents/1.json
  def show
    @parent = Parent.find(params[:id])
  end

  # GET /parents/new
  def new
    @parent = Parent.new

    @employees = Employee.all.order(:first_name)
    @parent_types = ParentType.all.order(:parent_type_title)
  end

  # GET /parents/1/edit
  def edit
    @parent = Parent.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @parent_types = ParentType.all.order(:parent_type_title)
  end

  # POST /parents
  # POST /parents.json
  def create

    @parents = Parent.all
    @parent = Parent.create(parent_params)

    @employees = Employee.all.order(:first_name)
    @parent_types = ParentType.all.order(:parent_type_title)

=begin
    @parent = Parent.new(parent_params)

    respond_to do |format|
      if @parent.save
        format.html { redirect_to @parent, notice: 'Parent was successfully created.' }
        format.json { render :show, status: :created, location: @parent }
      else
        format.html { render :new }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /parents/1
  # PATCH/PUT /parents/1.json
  def update

    @parents = Parent.all
    @parent = Parent.find(params[:id])

    @parent.update_attributes(parent_params)

    @employees = Employee.all.order(:first_name)
    @parent_types = ParentType.all.order(:parent_type_title)

=begin
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'Parent was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent }
      else
        format.html { render :edit }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @parent = Parent.find(params[:parent_id])
  end

  # DELETE /parents/1
  # DELETE /parents/1.json
  def destroy
    @parents = Parent.all
    @parent = Parent.find(params[:id])
    @parent.destroy

=begin
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to parents_url, notice: 'Parent was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent
      @parent = Parent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_params
      params.require(:parent).permit(:employee_id, :parent_type_id, :first_name, :last_name, :patronymic, :gender, :dob, :notes)
    end
end
