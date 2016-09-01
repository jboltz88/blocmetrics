class EventsController < ApplicationController
  def create
    @registered_app = RegisteredApp.find(params[:registered_app_id])
    @event = @registered_app.events.new(event_params)

    if @event.save
      flash[:notice] = "Event saved successfully."
      redirect_to @registered_app
    else
      flash[:alert] = "There was an error saving the event."
      redirect_to @registered_app
    end
  end

  private

  def event_params
    params.require(:event).permit(:name)
  end

end
