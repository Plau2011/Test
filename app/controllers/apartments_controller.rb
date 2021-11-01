class ApartmentsController < ApplicationController
  def index
    @departamentos = Apartment.all
  end

  def show
    @departamentos = Apartment.find(params[:id])
  end

  def new
    @departamentos = Apartment.new
    
  end

  def create
    departamento = Apartment.new
    departamento.numero = params['numero']
    departamento.building_id = params['building_id']

  if departamento.save
    redirect_to departamentos_path
  end
end
end