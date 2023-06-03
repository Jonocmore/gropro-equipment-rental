class EquipmentController < ApplicationController
  # skip_before_action :authentication_user!, only: :index

  def index
    @equipment = Equipment.all
    if params[:search].present?
      @equipment = Equipment.search_by_name(params[:search])
    end
    @equipment_new = Equipment.new
  end

  def new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.user = current_user
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :new
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
    @rentals = @equipment.rentals
    @rental = Rental.new

    render "rental" # Render the rental page directly within the show action
  end

  def edit
  end

  def search
    @results = Equipment.search_by_name(params[:query])
  end

  private

  def equipment_params
    params.require(:equipment).permit(:category, :name, :location, :quantity, :price, :rented, :photo, :description)
  end
end
