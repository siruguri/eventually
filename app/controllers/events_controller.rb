class EventsController < ApplicationController

  before_filter :authenticate_user!
  load_and_authorize_resource except: :create

  # GET /events
  # GET /events.json
  def index
    @events = Event.where(:organization_id => current_user.organization_id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    owning_org_id = current_user.organization_id

# put this back in when we allow team creation during event creation
#    team_params={}
#    team_params[:name] = params[:event][:team_name] || "Placeholder team for #{params[:event][:name]}"
#    team_params[:organization_id] = owning_org.id

    t=Team.where(id: params[:event][:team_id])
    Rails.logger.info("Got team #{t[0].name}")

    params[:event].delete :team_id

    @event = Event.new(params[:event])
    @event.organization_id=owning_org_id

    t[0].event=@event
    t[0].save

    @event.team = t[0]

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
