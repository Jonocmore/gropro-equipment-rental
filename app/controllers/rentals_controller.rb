class RentalsController < ApplicationController

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @equipment = Equipment.find(params[:equipment_id])
    @rental.equipment = @equipment
    if @rental.save
      redirect_to equipment_path(@equipment), notice: "Rental was successfully created."
    else
      render :new
    end
  end

  def dashboard
    @rentals = Rental.all
  end

  private

  def rental_params
    params.require(:rental).permit(:rented_date, :return_date)
  end

  private

  def rental_params
  end
end
