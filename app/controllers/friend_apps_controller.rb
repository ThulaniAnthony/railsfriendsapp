class FriendAppsController < ApplicationController
  before_action :set_friend_app, only: %i[ show edit update destroy ]

  # GET /friend_apps or /friend_apps.json
  def index
    @friend_apps = FriendApp.all
  end

  # GET /friend_apps/1 or /friend_apps/1.json
  def show
  end

  # GET /friend_apps/new
  def new
    @friend_app = FriendApp.new
  end

  # GET /friend_apps/1/edit
  def edit
  end

  # POST /friend_apps or /friend_apps.json
  def create
    @friend_app = FriendApp.new(friend_app_params)

    respond_to do |format|
      if @friend_app.save
        format.html { redirect_to friend_app_url(@friend_app), notice: "Friend app was successfully created." }
        format.json { render :show, status: :created, location: @friend_app }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friend_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friend_apps/1 or /friend_apps/1.json
  def update
    respond_to do |format|
      if @friend_app.update(friend_app_params)
        format.html { redirect_to friend_app_url(@friend_app), notice: "Friend app was successfully updated." }
        format.json { render :show, status: :ok, location: @friend_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friend_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_apps/1 or /friend_apps/1.json
  def destroy
    @friend_app.destroy

    respond_to do |format|
      format.html { redirect_to friend_apps_url, notice: "Friend app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_app
      @friend_app = FriendApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friend_app_params
      params.require(:friend_app).permit(:first_name, :last_name, :email, :phone, :linkedin)
    end
end
