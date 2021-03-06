class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new({book_id: params[:book_id]})

  end

  def create
    @reservation = Reservation.create reservation_params
    redirect_to action: "show", id: @reservation
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :return_date, :book_id)

  end
end
