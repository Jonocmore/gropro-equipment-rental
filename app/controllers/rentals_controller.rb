class RentalsController < ApplicationController
  def create
    @equipment = Equipment.find(params[:equipment_id])
    @rental = Rental.new(rental_params)
    @rental.user_id = 1
    @rental.equipment = @equipment
    if @rental.save
      redirect_to equipment_path(@equipment)
    else
      render 'equipment/show', status: :unprocessable_entity

    end
  end

  def dashboard
  end

  private

  def rental_params
    params.require(:rental).permit(:rented_date, :return_date)
  end
end
