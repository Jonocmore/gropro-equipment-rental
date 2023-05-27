class RentalsController < ApplicationController
  before_action :set_equipment, only: %i[new create]

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.equipment = @equipment
    if @rental.save
      redirect_to equipments_path(@equipment)
    else
      render :equipments, status: :unprocessable_entity
    end
  end

  def dashboard
  end

  private

  def rental_params
    params.require(:rental).permit(:rented_date, :return_date, :equipment_id)
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def set_equipment
    @equipment = Rental.find(params[:equipment_id])
  end
end
