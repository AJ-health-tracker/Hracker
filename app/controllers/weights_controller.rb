class WeightsController < ApplicationController
  before_action :set_weight, only: [:show, :edit, :update, :destroy]
  #belongs_to :exercise_types
  # GET /weights
  def index
    @weights = Weight.all
  end

  # GET /weights/1
  def show
  end

  # GET /weights/new
  def new
    @weight = Weight.new
  end

  # GET /weights/1/edit
  def edit
  end

  def create
    @weight = Weight.where(created_at: Time.now.beginning_of_day.utc..Time.now.end_of_day.utc).first_or_create!
    redirect_to @weight

  end
    #@weight.update_attributes(weight_params)

    # if @weight.save
    #   redirect_to @weight, notice: 'Weight overwrote previous.'
    # else
    #   render :new
    # end
  

  # POST /weights
  # def create
  #   @weight = Weight.new(weight_params)
  #
  #   if @weight.save
  #     redirect_to @weight, notice: 'Weight was successfully created.'
  #   else
  #     render :new
  #   end
  # end

  # PATCH/PUT /weights/1
  def update
    if @weight.update(weight_params)
      redirect_to @weight, notice: 'Weight was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /weights/1
  def destroy
    @weight.destroy
    redirect_to weights_url, notice: 'Weight was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight
      @weight = Weight.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def weight_params
      params.require(:weight).permit(:weight)
    end
end
