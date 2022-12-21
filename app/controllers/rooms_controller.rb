class RoomsController < ApplicationController

  def index
    @rooms = Room.all

    if params[:query].present?
      sql_query = "category ILIKE :query OR description ILIKE :query"
      @rooms = Room.where(sql_query, query: "%#{params[:query]}%")
    else
      @rooms = Room.all
    end
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end

end
