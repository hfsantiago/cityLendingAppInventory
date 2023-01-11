class DeliveryCollectRecordAssetsController < ApplicationController
  before_action :set_delivery_collect_record_asset, only: %i[ show edit update destroy ]

  # GET /delivery_collect_record_assets or /delivery_collect_record_assets.json
  def index
    @delivery_collect_record_assets = DeliveryCollectRecordAsset.all
  end

  # GET /delivery_collect_record_assets/1 or /delivery_collect_record_assets/1.json
  def show
  end

  # GET /delivery_collect_record_assets/new
  def new
    @delivery_collect_record_asset = DeliveryCollectRecordAsset.new
  end

  # GET /delivery_collect_record_assets/1/edit
  def edit
  end

  # POST /delivery_collect_record_assets or /delivery_collect_record_assets.json
  def create
    @delivery_collect_record_asset = DeliveryCollectRecordAsset.new(delivery_collect_record_asset_params)

    respond_to do |format|
      if @delivery_collect_record_asset.save
        format.html { redirect_to delivery_collect_record_asset_url(@delivery_collect_record_asset), notice: "Delivery collect record asset was successfully created." }
        format.json { render :show, status: :created, location: @delivery_collect_record_asset }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @delivery_collect_record_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_collect_record_assets/1 or /delivery_collect_record_assets/1.json
  def update
    respond_to do |format|
      if @delivery_collect_record_asset.update(delivery_collect_record_asset_params)
        format.html { redirect_to delivery_collect_record_asset_url(@delivery_collect_record_asset), notice: "Delivery collect record asset was successfully updated." }
        format.json { render :show, status: :ok, location: @delivery_collect_record_asset }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @delivery_collect_record_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_collect_record_assets/1 or /delivery_collect_record_assets/1.json
  def destroy
    @delivery_collect_record_asset.destroy

    respond_to do |format|
      format.html { redirect_to delivery_collect_record_assets_url, notice: "Delivery collect record asset was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_collect_record_asset
      @delivery_collect_record_asset = DeliveryCollectRecordAsset.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_collect_record_asset_params
      params.require(:delivery_collect_record_asset).permit(:delivery_collect_record_id, :asset_id)
    end
end
