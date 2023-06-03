class EquipmentController < ApplicationController
  # skip_before_action :authentication_user!, only: :index

  def index
    @equipment = Equipment.all
    if params[:search].present?
      @equipment = Equipment.search_by_name(params[:search])
    end
    @equipment_new = Equipment.new
    @rental = Rental.all
    @user = User.find(current_user.id)
    @user_equipment = @equipment.where(user_id: @user)
    @user_rental = @rental.where(user_id: @user)
  end

  def new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.user = current_user
    if @equipment.save
      redirect_to root_path(@equipment)
    else
      render :index, status: :unprocessable_entity
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
    # @rentals = @equipment.rentals
    @rental = Rental.new
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
