class BookingsController < ApplicationController
  def create
    booking = Booking.new(
      user_id: params[:user_id],
      clown_id: params[:clown_id],
      date: params[:date]
    )
    booking.save
    render json: booking.as_json
  end

  def index
    if current_user
      bookings = current_user.bookings
      render json: bookings
    else
      render json: [], status: :unauthorized
    end
  end

  def most
    render json: {message: "hello"}
  end

end
