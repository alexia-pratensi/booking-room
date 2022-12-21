class BookingsController < ApplicationController

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.room = @room
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to dashboard_path, notice: 'Réservation validée !'
    else
      redirect_to room_path(@room), notice: 'Vous devez indiquer les dates !'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @room = @booking.room
    # @room = Room.find(params[:room_id])
    @booking.user_id = current_user.id
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end



end
