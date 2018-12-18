class ParentTypesController < ApplicationController
  before_action :set_parent_type, only: [:show, :edit, :update, :destroy]

  # GET /parent_types
  # GET /parent_types.json
  def index
    @parent_types = ParentType.all
  end

  # GET /parent_types/1
  # GET /parent_types/1.json
  def show
    @parent_type = ParentType.find(params[:id])
  end

  # GET /parent_types/new
  def new
    @parent_type = ParentType.new
  end

  # GET /parent_types/1/edit
  def edit
    @parent_type = ParentType.find(params[:id])
  end

  # POST /parent_types
  # POST /parent_types.json
  def create

    @parent_types = ParentType.all
    @parent_type = ParentType.create(parent_type_params)
=begin
    respond_to do |format|
      if @parent_type.save
        format.html { redirect_to @parent_type, notice: 'Parent type was successfully created.' }
        format.json { render :show, status: :created, location: @parent_type }
      else
        format.html { render :new }
        format.json { render json: @parent_type.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /parent_types/1
  # PATCH/PUT /parent_types/1.json
  def update

    @parent_types = ParentType.all
    @parent_type = ParentType.find(params[:id])

    @parent_type.update_attributes(parent_type_params)

=begin
    respond_to do |format|
      if @parent_type.update(parent_type_params)
        format.html { redirect_to @parent_type, notice: 'Parent type was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent_type }
      else
        format.html { render :edit }
        format.json { render json: @parent_type.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @parent_type = ParentType.find(params[:parent_type_id])
  end

  # DELETE /parent_types/1
  # DELETE /parent_types/1.json
  def destroy

    @parent_types = ParentType.all
    @parent_type = ParentType.find(params[:id])
    @parent_type.destroy

=begin
    @parent_type.destroy
    respond_to do |format|
      format.html { redirect_to parent_types_url, notice: 'Parent type was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_type
      @parent_type = ParentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_type_params
      params.require(:parent_type).permit(:parent_type_title, :notes)
    end
end
