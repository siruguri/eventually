module Api
  class EventsController < ApiController

    doorkeeper_for :all
    respond_to :json
    load_and_authorize_resource :event

    def index
      respond_with @events
    end

    
  end
end

