class WorkingOrderActivitiesController < ApplicationController
  before_action :set_working_order_activity, only: %i[ show edit update destroy ]

  # GET /working_order_activities or /working_order_activities.json
  def index
    @working_order_activities = WorkingOrderActivity.all
  end

  # GET /working_order_activities/1 or /working_order_activities/1.json
  def show
  end

  # GET /working_order_activities/new
  def new
    @working_order_activity = WorkingOrderActivity.new
  end

  # GET /working_order_activities/1/edit
  def edit
  end

  # POST /working_order_activities or /working_order_activities.json
  def create
    @working_order_activity = WorkingOrderActivity.new(working_order_activity_params)

    respond_to do |format|
      if @working_order_activity.save
        format.html { redirect_to working_order_activity_url(@working_order_activity), notice: "Working order activity was successfully created." }
        format.json { render :show, status: :created, location: @working_order_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @working_order_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_order_activities/1 or /working_order_activities/1.json
  def update
    respond_to do |format|
      if @working_order_activity.update(working_order_activity_params)
        format.html { redirect_to working_order_activity_url(@working_order_activity), notice: "Working order activity was successfully updated." }
        format.json { render :show, status: :ok, location: @working_order_activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @working_order_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_order_activities/1 or /working_order_activities/1.json
  def destroy
    @working_order_activity.destroy

    respond_to do |format|
      format.html { redirect_to working_order_activities_url, notice: "Working order activity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_order_activity
      @working_order_activity = WorkingOrderActivity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def working_order_activity_params
      params.require(:working_order_activity).permit(:working_order_id, :observaciones, :id_orden_servicio, :fecha_hora)
    end
end
