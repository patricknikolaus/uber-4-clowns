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
end
