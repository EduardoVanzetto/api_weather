class BuscaTemperatura
    require ’net/http’
    require ‘json’
    def buscar

        cidade = params{:cidade}
        url = ""

        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        endereço = Endereco.new
        render json: endereço
    end

end
