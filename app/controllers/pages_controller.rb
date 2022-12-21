class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :root ]

  def dashboard
    @rooms = current_user.rooms
    @bookings = current_user.bookings
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to dashboard_path, status: :see_other
  end
end
