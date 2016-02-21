class ControlUsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.where.not(current_user.id)
    authorize@users
  end
  # GET /user/1
  # GET /user/1.json
  def show
  end

  # GET /user/new
  def new
    @user = user.new
  end

  # GET /user/1/edit
  def edit
  end

  # PATCH/PUT /user/1
  # PATCH/PUT /user/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to control_user_url, notice: 'Usuario atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/1
  # DELETE /user/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to control_user_url, notice: 'Usuario excluida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:person_id, :role, :off_at)
    end
end