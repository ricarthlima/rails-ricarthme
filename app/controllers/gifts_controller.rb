class GiftsController < ApplicationController
  before_action :set_gift, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /gifts
  # GET /gifts.json
  def index
    authorize! :manage, :all
    @gifts = Gift.all
  end

  # GET /gifts/1
  # GET /gifts/1.json
  def show
    authorize! :manage, :all
  end

  # GET /gifts/new
  def new
    authorize! :manage, :all
    @gift = Gift.new
  end

  # GET /gifts/1/edit
  def edit
    authorize! :manage, :all
  end

  # POST /gifts
  # POST /gifts.json
  def create
    authorize! :manage, :all
    @gift = Gift.new(gift_params)

    respond_to do |format|
      if @gift.save
        format.html { redirect_to @gift, notice: 'Gift was successfully created.' }
        format.json { render :show, status: :created, location: @gift }
      else
        format.html { render :new }
        format.json { render json: @gift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gifts/1
  # PATCH/PUT /gifts/1.json
  def update
    authorize! :manage, :all
    respond_to do |format|
      if @gift.update(gift_params)
        format.html { redirect_to @gift, notice: 'Gift was successfully updated.' }
        format.json { render :show, status: :ok, location: @gift }
      else
        format.html { render :edit }
        format.json { render json: @gift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gifts/1
  # DELETE /gifts/1.json
  def destroy
    authorize! :manage, :all
    @gift.destroy
    respond_to do |format|
      format.html { redirect_to gifts_url, notice: 'Gift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift
      @gift = Gift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_params
      params.require(:gift).permit(:name, :wishlevel, :price, :description, :url_image, :url_prod, :active)
    end
end
