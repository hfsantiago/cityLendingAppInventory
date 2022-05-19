class DeliveryCollectRecordsController < ApplicationController
  before_action :set_delivery_collect_record, only: %i[ show edit update destroy ]

  # GET /delivery_collect_records or /delivery_collect_records.json
  def index
    @delivery_collect_records = DeliveryCollectRecord.all
  end

  # GET /delivery_collect_records/1 or /delivery_collect_records/1.json
  def show
  end

  # GET /delivery_collect_records/new
  def new
    @delivery_collect_record = DeliveryCollectRecord.new
  end

  # GET /delivery_collect_records/1/edit
  def edit
  end

  # POST /delivery_collect_records or /delivery_collect_records.json
  def create
    @delivery_collect_record = DeliveryCollectRecord.new(delivery_collect_record_params)

    respond_to do |format|
      if @delivery_collect_record.save
        format.html { redirect_to delivery_collect_record_url(@delivery_collect_record), notice: "Delivery collect record was successfully created." }
        format.json { render :show, status: :created, location: @delivery_collect_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @delivery_collect_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_collect_records/1 or /delivery_collect_records/1.json
  def update
    respond_to do |format|
      if @delivery_collect_record.update(delivery_collect_record_params)
        format.html { redirect_to delivery_collect_record_url(@delivery_collect_record), notice: "Delivery collect record was successfully updated." }
        format.json { render :show, status: :ok, location: @delivery_collect_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @delivery_collect_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_collect_records/1 or /delivery_collect_records/1.json
  def destroy
    @delivery_collect_record.destroy

    respond_to do |format|
      format.html { redirect_to delivery_collect_records_url, notice: "Delivery collect record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_collect_record
      @delivery_collect_record = DeliveryCollectRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_collect_record_params
      params.require(:delivery_collect_record).permit(:employee_id, :fecha, :is_delivery, :nombre_recibe, :nombre_devuelve, :devolucion_observaciones, :devolucion_estado_equipo)
    end
end
