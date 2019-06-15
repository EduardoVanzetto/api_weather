class TemperaturaController < ApplicationController
require 'net/http'
require 'json'

    def buscar_agora

        render json: BuscaTemperatura.new.buscar_agora(cidade_params[:cidade]), status: :ok;
    end

    def buscar_horas

        render json: BuscaHora.new.buscar_horas(cidade_params[:cidade]), status: :ok;

    end

    def buscar_dias

        render json: BuscarDias.new.buscar_dias(cidade_params[:cidade], status: :ok);

    end

    private

    def cidade_params
        params.permit(:cidade)

    end

    
    
end
