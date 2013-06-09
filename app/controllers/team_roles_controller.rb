class TeamRolesController < ApplicationController
  # GET /team_roles
  # GET /team_roles.json
  def index
    @team_roles = TeamRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_roles }
    end
  end

  # GET /team_roles/1
  # GET /team_roles/1.json
  def show
    @team_role = TeamRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_role }
    end
  end

  # GET /team_roles/new
  # GET /team_roles/new.json
  def new
    @team_role = TeamRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_role }
    end
  end

  # GET /team_roles/1/edit
  def edit
    @team_role = TeamRole.find(params[:id])
  end

  # POST /team_roles
  # POST /team_roles.json
  def create
    @team_role = TeamRole.new(params[:team_role])

    respond_to do |format|
      if @team_role.save
        format.html { redirect_to @team_role, notice: 'Team role was successfully created.' }
        format.json { render json: @team_role, status: :created, location: @team_role }
      else
        format.html { render action: "new" }
        format.json { render json: @team_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_roles/1
  # PUT /team_roles/1.json
  def update
    @team_role = TeamRole.find(params[:id])

    respond_to do |format|
      if @team_role.update_attributes(params[:team_role])
        format.html { redirect_to @team_role, notice: 'Team role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_roles/1
  # DELETE /team_roles/1.json
  def destroy
    @team_role = TeamRole.find(params[:id])
    @team_role.destroy

    respond_to do |format|
      format.html { redirect_to team_roles_url }
      format.json { head :no_content }
    end
  end
end
