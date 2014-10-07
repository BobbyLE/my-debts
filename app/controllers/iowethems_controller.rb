class IowethemsController < ApplicationController
  before_action :set_iowethem, only: [:show, :edit, :update, :destroy]

  # GET /iowethems
  # GET /iowethems.json
  def index
    @iowethems = Iowethem.all
  end

  # GET /iowethems/1
  # GET /iowethems/1.json
  def show
  end

  # GET /iowethems/new
  def new
    @iowethem = Iowethem.new
  end

  # GET /iowethems/1/edit
  def edit
  end

  # POST /iowethems
  # POST /iowethems.json
  def create
    @iowethem = Iowethem.new(iowethem_params)

    respond_to do |format|
      if @iowethem.save
        format.html { redirect_to @iowethem, notice: 'Iowethem was successfully created.' }
        format.json { render :show, status: :created, location: @iowethem }
      else
        format.html { render :new }
        format.json { render json: @iowethem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iowethems/1
  # PATCH/PUT /iowethems/1.json
  def update
    respond_to do |format|
      if @iowethem.update(iowethem_params)
        format.html { redirect_to @iowethem, notice: 'Iowethem was successfully updated.' }
        format.json { render :show, status: :ok, location: @iowethem }
      else
        format.html { render :edit }
        format.json { render json: @iowethem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iowethems/1
  # DELETE /iowethems/1.json
  def destroy
    @iowethem.destroy
    respond_to do |format|
      format.html { redirect_to iowethems_url, notice: 'Iowethem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iowethem
      @iowethem = Iowethem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iowethem_params
      params.require(:iowethem).permit(:amount, :person)
    end
end
