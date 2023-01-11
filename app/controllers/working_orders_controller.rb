class WorkingOrdersController < ApplicationController
  before_action :set_working_order, only: %i[ show edit update destroy ]

  # GET /working_orders or /working_orders.json
  def index
    @working_orders = WorkingOrder.all
  end

  # GET /working_orders/1 or /working_orders/1.json
  def show
  end

  # GET /working_orders/new
  def new
    @working_order = WorkingOrder.new
  end

  # GET /working_orders/1/edit
  def edit
  end

  # POST /working_orders or /working_orders.json
  def create
    @working_order = WorkingOrder.new(working_order_params)

    respond_to do |format|
      if @working_order.save
        format.html { redirect_to working_order_url(@working_order), notice: "Working order was successfully created." }
        format.json { render :show, status: :created, location: @working_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @working_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_orders/1 or /working_orders/1.json
  def update
    respond_to do |format|
      if @working_order.update(working_order_params)
        format.html { redirect_to working_order_url(@working_order), notice: "Working order was successfully updated." }
        format.json { render :show, status: :ok, location: @working_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @working_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_orders/1 or /working_orders/1.json
  def destroy
    @working_order.destroy

    respond_to do |format|
      format.html { redirect_to working_orders_url, notice: "Working order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_order
      @working_order = WorkingOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def working_order_params
      params.require(:working_order).permit(:asset_id, :fecha_hora_apertura, :fecha_hora_cierre, :id_empleado_tecnico, :diagnostico_notas, :url_imagenes)
    end
end
