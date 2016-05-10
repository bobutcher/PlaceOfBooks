class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.find(params)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end
end
