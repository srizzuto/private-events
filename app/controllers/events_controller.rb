class EventsController < ApplicationController
  
  before_action authenticate_user, only: [:create, :new]

  def new
    @event = Event.new
  end

  def index
  end

  def create
    user = current_user
    @event = user.build(event_params)

    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :date)
  end
end
