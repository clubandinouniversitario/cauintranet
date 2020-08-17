class TripCategoriesController < ApplicationController
  before_action :set_trip_category, only: [:show, :edit, :update, :destroy]

  # GET /trip_categories
  # GET /trip_categories.json
  def index
    @trip_categories = TripCategory.all
  end

  # GET /trip_categories/1
  # GET /trip_categories/1.json
  def show
  end

  # GET /trip_categories/new
  def new
    @trip_category = TripCategory.new
  end

  # GET /trip_categories/1/edit
  def edit
  end

  # POST /trip_categories
  # POST /trip_categories.json
  def create
    @trip_category = TripCategory.new(trip_category_params)

    respond_to do |format|
      if @trip_category.save
        format.html { redirect_to @trip_category, notice: 'Trip category was successfully created.' }
        format.json { render :show, status: :created, location: @trip_category }
      else
        format.html { render :new }
        format.json { render json: @trip_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_categories/1
  # PATCH/PUT /trip_categories/1.json
  def update
    respond_to do |format|
      if @trip_category.update(trip_category_params)
        format.html { redirect_to @trip_category, notice: 'Trip category was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_category }
      else
        format.html { render :edit }
        format.json { render json: @trip_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_categories/1
  # DELETE /trip_categories/1.json
  def destroy
    @trip_category.destroy
    respond_to do |format|
      format.html { redirect_to trip_categories_url, notice: 'Trip category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_category
      @trip_category = TripCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_category_params
      params.require(:trip_category).permit(:name)
    end
end
