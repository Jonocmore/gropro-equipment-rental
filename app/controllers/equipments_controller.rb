class EquipmentsController < ApplicationController
  # skip_before_action :authentication_user!, only: :index
  before_action :set_equipment, only: %i[show]
  def index
    @equipment = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(list_params)
    if @equipment.save
      redirect_to equipments_path(@equipment)
    else
      render :equipments, status: :unprocessable_entity
    end
  end

  def show
    @rental = Rental.new
  end

  def edit
  end

  private

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end

  def equipment_params
    params.require(:equipment).permit(:name, :category, :quantity, :price, :item_url, :description)
  end
end
