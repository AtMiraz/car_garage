class HomeController < ApplicationController
  
  # Autenticación que se ejecuta antes de ejecutar los metodos del controlador
  before_action :authenticate_user!
  def index
  end

end
