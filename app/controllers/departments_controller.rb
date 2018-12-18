class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  # GET /departments
  # GET /departments.json
  def index
    @departments = Department.all
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
    @department = Department.find(params[:id])
  end

  # GET /departments/new
  def new
    @department = Department.new
    @department.is_open = true
    @departments = Department.all.order(:department_title)
  end

  # GET /departments/1/edit
  def edit
    @department = Department.find(params[:id])
    @departments = Department.all.order(:department_title)
  end

  # POST /departments
  # POST /departments.json
  def create
    @departments = Department.all

    if (params[:department][:parent_department_id].blank?)
      params[:department][:parent_department_id] = 0
    end

    @department = Department.create(department_params)
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update
    @departments = Department.all.order(:department_title)
    @department = Department.find(params[:id])

    if (params[:department][:parent_department_id].blank?)
      params[:department][:parent_department_id] = 0
    end

    @department.update_attributes(department_params)
  end

  def delete
    @department = Department.find(params[:department_id])
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @departments = Department.all
    @department = Department.find(params[:id])
    @department.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:department_title, :parent_department_id, :is_open, :notes)
    end
end
