class MeetupsController < ApplicationController
  before_action :set_meetup, only: [:show, :update, :destroy]

  # GET /meetups
  def index
    @meetups = Meetup.all

    render json: @meetups
  end

  # GET /meetups/1
  def show
    render json: @meetup
  end

  # POST /meetups
  def create
    @meetup = Meetup.new(meetup_params)

    if @meetup.save
      render json: @meetup, status: :created, location: @meetup
    else
      render json: @meetup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meetups/1
  def update
    if @meetup.update(meetup_params)
      render json: @meetup
    else
      render json: @meetup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meetups/1
  def destroy
    @friend = Friend.find(@meetup.friend_id)
    @meetup.destroy
    render json: @friend.meetups
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meetup
      @meetup = Meetup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meetup_params
      params.require(:meetup).permit(:date, :time, :location, :comments, :friend_id)
    end
end
