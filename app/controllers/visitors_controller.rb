class VisitorsController < ApplicationController
  def index
  end

  def comunidad
  end

  def contacto
    @contacto = Contacto.new
    render "contactos/new"
  end
end
