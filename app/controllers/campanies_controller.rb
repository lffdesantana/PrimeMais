class CampaniesController < ApplicationController
  before_action :set_campany, only: [:show, :edit, :update, :destroy]

  # GET /campanies
  # GET /campanies.json
  def index
    @campanies = Campany.all
  end

  # GET /campanies/1
  # GET /campanies/1.json
  def show
  end

  # GET /campanies/new
  def new
    @campany = Campany.new
  end

  # GET /campanies/1/edit
  def edit
  end

  # POST /campanies
  # POST /campanies.json
  def create
    @campany = Campany.new(campany_params)

    respond_to do |format|
      if @campany.save
        format.html { redirect_to @campany, notice: 'Campany was successfully created.' }
        format.json { render :show, status: :created, location: @campany }
      else
        format.html { render :new }
        format.json { render json: @campany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campanies/1
  # PATCH/PUT /campanies/1.json
  def update
    respond_to do |format|
      if @campany.update(campany_params)
        format.html { redirect_to @campany, notice: 'Campany was successfully updated.' }
        format.json { render :show, status: :ok, location: @campany }
      else
        format.html { render :edit }
        format.json { render json: @campany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campanies/1
  # DELETE /campanies/1.json
  def destroy
    @campany.destroy
    respond_to do |format|
      format.html { redirect_to campanies_url, notice: 'Campany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campany
      @campany = Campany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campany_params
      params.require(:campany).permit(:name, :cnpj, :phone, :obs, :total_strategy, :used_strategy, :total_consultation, :used_consultation, :dt_last_consultation)
    end
end
