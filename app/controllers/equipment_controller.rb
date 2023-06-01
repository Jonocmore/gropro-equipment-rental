class EquipmentController < ApplicationController
  # skip_before_action :authentication_user!, only: :index

  def index
    @equipment = Equipment.all
    @equipment_new = Equipment.new
  end

  def new

  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.user_id = 1
    if @equipment.save
      redirect_to root_path(@equipment)
    else
      render :index, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :category, :description, :price, :location, :photo)
  end
end
