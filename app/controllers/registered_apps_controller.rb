class RegisteredAppsController < ApplicationController
  def index
    @registered_apps = current_user.registered_apps
  end

  def show
    @registered_app = current_user.registered_apps.find(params[:id])
    # @event_groups = @registered_app.events.group_by(&:name)
    # event_group ["name", [array of events with that name]]
  end

  def new
    @registered_app = RegisteredApp.new
  end

  def create
    @user = current_user
    @registered_app = current_user.registered_apps.build(registered_app_params)

    if @registered_app.save
      flash[:notice] = "You successfully registered your application"
      redirect_to user_registered_apps_path
    else
      flash[:alert] = "There was an error in application registration"
      render :new
    end
  end

  def destroy
    @registered_app = current_user.registered_apps.find(params[:id])
    if @registered_app.destroy
      flash[:notice] = "\"#{@registered_app.name}\" was deleted successfully."
      redirect_to user_registered_apps_path
    else
      flash.now[:alert] = "There was an error deleting the application."
      render :show
    end
  end

  private

  def registered_app_params
    params.require(:registered_app).permit(:name, :url)
  end
end
