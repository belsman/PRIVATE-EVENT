module EventsHelper
    def set_event
        @event = Event.find(params[:id])
    end

    def event_params
        params.require(:event).permit(:name, :description, :starts_at)
    end
end
