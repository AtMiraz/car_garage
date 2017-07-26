class AgenciesController < ApplicationController
  # Autenticación que se ejecuta antes de ejecutar los metodos del controlador
  before_action :authenticate_user!
  def index
    @agencies = Agency.all
  end

  def create
    @agency = Agency.create(agencies_params)
    if @agency.save?
      redirect_to agencies_path
    else
      render :new
    end
  end

  def new
    @agency = Agency.new
  end

  def edit
    @agency = Agency.find(params[:id])
  end

  def show

  end

  def update
    @agency = Agency.find(params[:id])
    @agency.update_attributes(agencies_params)
    redirect_to agencies_path
  end

  def destroy
    @agency = Agency.find(params[:id])
    @agency.delete
    redirect_to agencies_path
  end

  private
  def agencies_params
    params.require(:agency).permit(:name)
  end


end
