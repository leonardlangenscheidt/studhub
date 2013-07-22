class EarringsController < ApplicationController
  before_action :set_earring, only: [:show, :edit, :update, :destroy]

  # GET /earrings
  # GET /earrings.json
  def index
    @earrings = Earring.all
  end

  # GET /earrings/1
  # GET /earrings/1.json
  def show
  end

  # GET /earrings/new
  def new
    @earring = Earring.new
  end

  # GET /earrings/1/edit
  def edit
  end

  # POST /earrings
  # POST /earrings.json
  def create
    @earring = Earring.new(earring_params)

    respond_to do |format|
      if @earring.save
        format.html { redirect_to @earring, notice: 'Earring was successfully created.' }
        format.json { render action: 'show', status: :created, location: @earring }
      else
        format.html { render action: 'new' }
        format.json { render json: @earring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /earrings/1
  # PATCH/PUT /earrings/1.json
  def update
    respond_to do |format|
      if @earring.update(earring_params)
        format.html { redirect_to @earring, notice: 'Earring was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @earring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earrings/1
  # DELETE /earrings/1.json
  def destroy
    @earring.destroy
    respond_to do |format|
      format.html { redirect_to earrings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_earring
      @earring = Earring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def earring_params
      params.require(:earring).permit(:brand, :color, :matched)
    end
end
