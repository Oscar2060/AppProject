class GymProductsController < ApplicationController
  before_action :set_gym_product, only: %i[ show edit update destroy ]

  # GET /gym_products or /gym_products.json
  def index
    @gym_products = GymProduct.all
  end

  # GET /gym_products/1 or /gym_products/1.json
  def show
  end

  # GET /gym_products/new
  def new
    @gym_product = GymProduct.new
  end

  # GET /gym_products/1/edit
  def edit
  end

  # POST /gym_products or /gym_products.json
  def create
    @gym_product = GymProduct.new(gym_product_params)

    respond_to do |format|
      if @gym_product.save
        format.html { redirect_to gym_product_url(@gym_product), notice: "Gym product was successfully created." }
        format.json { render :show, status: :created, location: @gym_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gym_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gym_products/1 or /gym_products/1.json
  def update
    respond_to do |format|
      if @gym_product.update(gym_product_params)
        format.html { redirect_to gym_product_url(@gym_product), notice: "Gym product was successfully updated." }
        format.json { render :show, status: :ok, location: @gym_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gym_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gym_products/1 or /gym_products/1.json
  def destroy
    @gym_product.destroy

    respond_to do |format|
      format.html { redirect_to gym_products_url, notice: "Gym product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym_product
      @gym_product = GymProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gym_product_params
      params.require(:gym_product).permit(:name, :description, :price, :numInStock)
    end
end
