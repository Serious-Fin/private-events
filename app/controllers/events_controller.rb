class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      flash[:success] = "Event created!"
      redirect_to @event
    else
      flash[:alert].now = "Some error!"
      render :new, status: :unprocessable_entity
    end
  end

  private
  def event_params
    params.require(:event).permit(:date, :location)
  end
end
