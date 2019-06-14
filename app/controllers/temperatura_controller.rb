class TemperaturaController < ApplicationController
require 'net/http'
require 'json'

    def buscar

        render json: BuscaTemperatura.new.buscar(cidade_params[:cidade]), status: :ok
    end

    private

    def cep_params
        params.permit(:cidade)

    end

    def proximas_horas

    end

    def proximos_dias

    end
    
end
