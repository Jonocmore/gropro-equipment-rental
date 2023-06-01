class EquipmentController < ApplicationController
  # skip_before_action :authentication_user!, only: :index

  def index
    @equipment = Equipment.all
    @equipment_new = Equipment.new
  end

  def new

  end

  def create
    @equipment_new = Equipment.new(equipment_params)
    @equipment_new.user_id = 1
    if @equipment_new.save
      redirect_to equipment_index_path(@equipment)
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
    params.require(:equipment).permit(:name, :category, :price, :location, :photo)
  end
end
