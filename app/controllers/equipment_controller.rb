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
  end

  def show
  end

  def edit
  end

  def search
    @results = Equipment.search_by_name(params[:query])
  end
end
