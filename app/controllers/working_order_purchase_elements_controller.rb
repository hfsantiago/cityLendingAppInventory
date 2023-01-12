class WorkingOrderPurchaseElementsController < ApplicationController
  before_action :set_working_order_purchase_element, only: %i[ show edit update destroy ]

  # GET /working_order_purchase_elements or /working_order_purchase_elements.json
  def index
    @working_order_purchase_elements = WorkingOrderPurchaseElement.all
  end

  # GET /working_order_purchase_elements/1 or /working_order_purchase_elements/1.json
  def show
  end

  # GET /working_order_purchase_elements/new
  def new
    @working_order_purchase_element = WorkingOrderPurchaseElement.new
  end

  # GET /working_order_purchase_elements/1/edit
  def edit
  end

  # POST /working_order_purchase_elements or /working_order_purchase_elements.json
  def create
    @working_order_purchase_element = WorkingOrderPurchaseElement.new(working_order_purchase_element_params)

    respond_to do |format|
      if @working_order_purchase_element.save
        format.html { redirect_to working_order_purchase_element_url(@working_order_purchase_element), notice: "Working order purchase element was successfully created." }
        format.json { render :show, status: :created, location: @working_order_purchase_element }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @working_order_purchase_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_order_purchase_elements/1 or /working_order_purchase_elements/1.json
  def update
    respond_to do |format|
      if @working_order_purchase_element.update(working_order_purchase_element_params)
        format.html { redirect_to working_order_purchase_element_url(@working_order_purchase_element), notice: "Working order purchase element was successfully updated." }
        format.json { render :show, status: :ok, location: @working_order_purchase_element }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @working_order_purchase_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_order_purchase_elements/1 or /working_order_purchase_elements/1.json
  def destroy
    @working_order_purchase_element.destroy

    respond_to do |format|
      format.html { redirect_to working_order_purchase_elements_url, notice: "Working order purchase element was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_order_purchase_element
      @working_order_purchase_element = WorkingOrderPurchaseElement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def working_order_purchase_element_params
      params.require(:working_order_purchase_element).permit(:working_order_id, :nombre_elemento, :cantidad, :url_compra, :observaciones, :comprado, :fecha_solicitud, :fecha_compra)
    end
end
