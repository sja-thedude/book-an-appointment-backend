class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_reservations = Reservation.where(user_id: params[:user_id])
    render json: @user_reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = params[:user_id]
    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    render json: { reservation: @reservation, message: 'Reservation successfully deleted' }
  end

  private

  def reservation_params
    params.require(:resevation).permit(:reservation_time, :doctor_id)
  end
end
