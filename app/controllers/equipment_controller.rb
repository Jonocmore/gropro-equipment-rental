class EquipmentController < ApplicationController
  # skip_before_action :authentication_user!, only: :index

  def index
    @equipment = Equipment.all
    @equipment_new = Equipment.new
  end

  def new

  end

  def create
  end

  def show
  end

  def edit
  end
end
