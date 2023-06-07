class RentalsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def create
    @equipment = Equipment.find(params[:equipment_id])
    @rental = Rental.new(rental_params)
    @rental.equipment = @equipment
    @user = current_user
    @rental.user = @user
    if @rental.save
      redirect_to equipment_path(@equipment), notice: "Rental was successfully created."
    else
      render "equipment/show", status: :unprocessable_entity
    end
  end

  def dashboard
  end

  private

  def rental_params
    params.require(:rental).permit(:rented_date, :return_date)
  end
end
