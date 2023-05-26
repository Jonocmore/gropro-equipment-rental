class EquipmentsController < ApplicationController
  # skip_before_action :authentication_user!, only: :index
  def index
    @equipment = Equipment.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
