class TrackedThingsController < ApplicationController
  before_action :set_tracked_thing, only: [:show, :edit, :update, :destroy]

  # GET /tracked_things
  # GET /tracked_things.json
  def index
    @tracked_things = TrackedThing.all
  end

  # GET /tracked_things/1
  # GET /tracked_things/1.json
  def show
  end

  # GET /tracked_things/new
  def new
    @tracked_thing = TrackedThing.new
  end

  # GET /tracked_things/1/edit
  def edit
  end

  # POST /tracked_things
  # POST /tracked_things.json
  def create
    @tracked_thing = TrackedThing.new(tracked_thing_params)

    respond_to do |format|
      if @tracked_thing.save
        format.html { redirect_to @tracked_thing, notice: 'Tracked thing was successfully created.' }
        format.json { render :show, status: :created, location: @tracked_thing }
      else
        format.html { render :new }
        format.json { render json: @tracked_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracked_things/1
  # PATCH/PUT /tracked_things/1.json
  def update
    respond_to do |format|
      if @tracked_thing.update(tracked_thing_params)
        format.html { redirect_to @tracked_thing, notice: 'Tracked thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @tracked_thing }
      else
        format.html { render :edit }
        format.json { render json: @tracked_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracked_things/1
  # DELETE /tracked_things/1.json
  def destroy
    @tracked_thing.destroy
    respond_to do |format|
      format.html { redirect_to tracked_things_url, notice: 'Tracked thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracked_thing
      @tracked_thing = TrackedThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tracked_thing_params
      params.require(:tracked_thing).permit(:time_of_thing, :notes)
    end
end
